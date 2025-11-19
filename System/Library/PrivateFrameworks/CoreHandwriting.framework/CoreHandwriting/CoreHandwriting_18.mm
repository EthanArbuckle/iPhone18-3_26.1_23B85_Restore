uint64_t sub_1838FE904(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[6];
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

      v5 = v1[4];
      v1[4] = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_1838FE978(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_183689098(a1, prime);
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
    sub_183811498(a1, i + 2);
  }

  return a1;
}

void sub_1838FEABC(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
        *(v7 + 1) = *(a2 + 1);
        v7[4] = a2[4];
        v8 = *v7;
        sub_1838FEC08(a1, v7);
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

void sub_1838FEBC0(void *a1)
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

void sub_1838FEC08(uint64_t a1, void *a2)
{
  v4 = a2[2] ^ (2 * a2[3]);
  a2[1] = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_183688F00();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v31 = std::__next_prime(v12);
        if (prime <= v31)
        {
          prime = v31;
        }

        if (prime >= v5)
        {
LABEL_23:
          v5 = *(a1 + 8);
          v15 = vcnt_s8(v5);
          v15.i16[0] = vaddlv_u8(v15);
          v16 = v15.u32[0];
          if (v15.u32[0] < 2uLL)
          {
            goto LABEL_26;
          }

LABEL_51:
          v34 = v4;
          if (v5 <= v4)
          {
            v34 = v4 % v5;
          }

          v19 = *a1;
          v35 = *(*a1 + 8 * v34);
          if (!v35)
          {
            v26 = 0;
            v30 = a2[1];
            if (v30 < v5)
            {
              goto LABEL_70;
            }

            goto LABEL_69;
          }

          v36 = 0;
          do
          {
            v26 = v35;
            v35 = *v35;
            if (!v35)
            {
              break;
            }

            v41 = v35[1];
            v42 = v41;
            if (v41 >= v5)
            {
              v42 = v41 % v5;
            }

            if (v42 != v34)
            {
              break;
            }

            if (v41 == v4)
            {
              v37 = v35[2] == a2[2] && v35[3] == a2[3];
              v38 = v37;
            }

            else
            {
              v38 = 0;
            }

            v39 = v38 != (v36 & 1);
            v40 = v36 & v39;
            v36 |= v39;
          }

          while (v40 != 1);
          goto LABEL_39;
        }
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }

        if (prime <= v12)
        {
          prime = v12;
        }

        if (prime >= v5)
        {
          goto LABEL_23;
        }
      }

      if (prime)
      {
        goto LABEL_13;
      }

      v32 = *a1;
      *a1 = 0;
      if (v32)
      {
        operator delete(v32);
      }

      v5 = 0;
      *(a1 + 8) = 0;
      v33 = vcnt_s8(0);
      v33.i16[0] = vaddlv_u8(v33);
      v16 = v33.u32[0];
      if (v33.u32[0] < 2uLL)
      {
        goto LABEL_26;
      }

      goto LABEL_51;
    }
  }

  v17 = vcnt_s8(v5);
  v17.i16[0] = vaddlv_u8(v17);
  v16 = v17.u32[0];
  if (v17.u32[0] >= 2uLL)
  {
    goto LABEL_51;
  }

LABEL_26:
  v18 = (v5 - 1) & v4;
  v19 = *a1;
  v20 = *(*a1 + 8 * v18);
  if (!v20)
  {
    v26 = 0;
    v30 = a2[1];
    goto LABEL_43;
  }

  v21 = 0;
  while (1)
  {
    v26 = v20;
    v20 = *v20;
    if (!v20)
    {
      break;
    }

    v27 = v20[1];
    if ((v27 & (v5 - 1)) != v18)
    {
      break;
    }

    if (v27 == v4)
    {
      v23 = v20[2] == a2[2] && v20[3] == a2[3];
      v24 = v23 != (v21 & 1);
      v25 = v21 & v24;
      v21 |= v24;
      if (v25)
      {
        break;
      }
    }

    else
    {
      v28 = (v21 & 1) != 0;
      v29 = v21 & v28;
      v21 |= v28;
      if (v29)
      {
        break;
      }
    }
  }

LABEL_39:
  v30 = a2[1];
  if (v16 <= 1)
  {
LABEL_43:
    v30 &= v5 - 1;
    goto LABEL_70;
  }

  if (v30 >= v5)
  {
LABEL_69:
    v30 %= v5;
  }

LABEL_70:
  if (!v26)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v19[v30] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_84;
    }

    v43 = *(*a2 + 8);
    if (v16 > 1)
    {
      if (v43 >= v5)
      {
        v43 %= v5;
      }
    }

    else
    {
      v43 &= v5 - 1;
    }

LABEL_83:
    v19[v43] = a2;
    goto LABEL_84;
  }

  *a2 = *v26;
  *v26 = a2;
  if (*a2)
  {
    v43 = *(*a2 + 8);
    if (v16 > 1)
    {
      if (v43 >= v5)
      {
        v43 %= v5;
      }
    }

    else
    {
      v43 &= v5 - 1;
    }

    if (v43 != v30)
    {
      goto LABEL_83;
    }
  }

LABEL_84:
  ++*(a1 + 24);
}

void sub_1838FF148(uint64_t a1, void *a2, void *a3)
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
        v7[2] = a2[2];
        v8 = *v7;
        sub_1838FF278(a1, v7);
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

void sub_1838FF230(void *a1)
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

void sub_1838FF278(uint64_t a1, void *a2)
{
  v4 = a2[2];
  a2[1] = v4;
  v5 = *(a1 + 8);
  v6 = (*(a1 + 24) + 1);
  v7 = *(a1 + 32);
  if (!v5 || (v7 * v5) < v6)
  {
    v8 = 1;
    if (v5 >= 3)
    {
      v8 = (v5 & (v5 - 1)) != 0;
    }

    v9 = v8 | (2 * v5);
    v10 = vcvtps_u32_f32(v6 / v7);
    if (v9 <= v10)
    {
      prime = v10;
    }

    else
    {
      prime = v9;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v5 = *(a1 + 8);
    }

    if (prime > v5)
    {
LABEL_13:
      if (!(prime >> 61))
      {
        operator new();
      }

      sub_183688F00();
    }

    if (prime < v5)
    {
      v12 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
      if (v5 < 3 || (v13 = vcnt_s8(v5), v13.i16[0] = vaddlv_u8(v13), v13.u32[0] > 1uLL))
      {
        v29 = std::__next_prime(v12);
        if (prime <= v29)
        {
          prime = v29;
        }

        if (prime >= v5)
        {
LABEL_23:
          v5 = *(a1 + 8);
          v15 = vcnt_s8(v5);
          v15.i16[0] = vaddlv_u8(v15);
          v16 = v15.u32[0];
          if (v15.u32[0] < 2uLL)
          {
            goto LABEL_26;
          }

LABEL_45:
          v32 = v4;
          if (v5 <= v4)
          {
            v32 = v4 % v5;
          }

          v19 = *a1;
          v33 = *(*a1 + 8 * v32);
          if (!v33)
          {
            v24 = 0;
            v28 = a2[1];
            if (v28 < v5)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          }

          v34 = 0;
          do
          {
            v24 = v33;
            v33 = *v33;
            if (!v33)
            {
              break;
            }

            v38 = v33[1];
            v39 = v38;
            if (v38 >= v5)
            {
              v39 = v38 % v5;
            }

            if (v39 != v32)
            {
              break;
            }

            v35 = v38 == v4 && v33[2] == a2[2];
            v36 = v35 != (v34 & 1);
            v37 = v34 & v36;
            v34 |= v36;
          }

          while (v37 != 1);
          goto LABEL_33;
        }
      }

      else
      {
        v14 = 1 << -__clz(v12 - 1);
        if (v12 >= 2)
        {
          v12 = v14;
        }

        if (prime <= v12)
        {
          prime = v12;
        }

        if (prime >= v5)
        {
          goto LABEL_23;
        }
      }

      if (prime)
      {
        goto LABEL_13;
      }

      v30 = *a1;
      *a1 = 0;
      if (v30)
      {
        operator delete(v30);
      }

      v5 = 0;
      *(a1 + 8) = 0;
      v31 = vcnt_s8(0);
      v31.i16[0] = vaddlv_u8(v31);
      v16 = v31.u32[0];
      if (v31.u32[0] < 2uLL)
      {
        goto LABEL_26;
      }

      goto LABEL_45;
    }
  }

  v17 = vcnt_s8(v5);
  v17.i16[0] = vaddlv_u8(v17);
  v16 = v17.u32[0];
  if (v17.u32[0] >= 2uLL)
  {
    goto LABEL_45;
  }

LABEL_26:
  v18 = (v5 - 1) & v4;
  v19 = *a1;
  v20 = *(*a1 + 8 * v18);
  if (!v20)
  {
    v24 = 0;
    v28 = a2[1];
    goto LABEL_37;
  }

  v21 = 0;
  while (1)
  {
    v24 = v20;
    v20 = *v20;
    if (!v20)
    {
      break;
    }

    v25 = v20[1];
    if ((v25 & (v5 - 1)) != v18)
    {
      break;
    }

    if (v25 == v4)
    {
      v22 = (v20[2] == a2[2]) != (v21 & 1);
      v23 = v21 & v22;
      v21 |= v22;
      if (v23)
      {
        break;
      }
    }

    else
    {
      v26 = (v21 & 1) != 0;
      v27 = v21 & v26;
      v21 |= v26;
      if (v27)
      {
        break;
      }
    }
  }

LABEL_33:
  v28 = a2[1];
  if (v16 <= 1)
  {
LABEL_37:
    v28 &= v5 - 1;
    goto LABEL_59;
  }

  if (v28 >= v5)
  {
LABEL_58:
    v28 %= v5;
  }

LABEL_59:
  if (!v24)
  {
    *a2 = *(a1 + 16);
    *(a1 + 16) = a2;
    v19[v28] = a1 + 16;
    if (!*a2)
    {
      goto LABEL_73;
    }

    v40 = *(*a2 + 8);
    if (v16 > 1)
    {
      if (v40 >= v5)
      {
        v40 %= v5;
      }
    }

    else
    {
      v40 &= v5 - 1;
    }

LABEL_72:
    v19[v40] = a2;
    goto LABEL_73;
  }

  *a2 = *v24;
  *v24 = a2;
  if (*a2)
  {
    v40 = *(*a2 + 8);
    if (v16 > 1)
    {
      if (v40 >= v5)
      {
        v40 %= v5;
      }
    }

    else
    {
      v40 &= v5 - 1;
    }

    if (v40 != v28)
    {
      goto LABEL_72;
    }
  }

LABEL_73:
  ++*(a1 + 24);
}

void sub_1838FF7A4(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
        *(v7 + 1) = *(a2 + 1);
        if (v7 != a2)
        {
          *(v7 + 16) = *(a2 + 16);
          sub_1838FF148((v7 + 4), a2[6], 0);
        }

        v8 = *v7;
        sub_1838FEC08(a1, v7);
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
        v10 = v7[6];
        if (v10)
        {
          do
          {
            v11 = *v10;
            operator delete(v10);
            v10 = v11;
          }

          while (v11);
        }

        v12 = v7[4];
        v7[4] = 0;
        if (v12)
        {
          operator delete(v12);
        }

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

void sub_1838FF904(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1838FE82C(v1);
  __cxa_rethrow();
}

void sub_1838FF930(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1838FE904(va);
  _Unwind_Resume(a1);
}

void sub_1838FF944(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1838FE904(va);
  _Unwind_Resume(a1);
}

void sub_1838FF958(uint64_t a1, uint64_t *a2, uint64_t *a3)
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
        v7[2] = a2[2];
        if (v7 != a2)
        {
          *(v7 + 14) = *(a2 + 14);
          sub_1838FEABC((v7 + 3), a2[5], 0);
        }

        v8 = *v7;
        sub_1838FF278(a1, v7);
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
        v10 = v7[5];
        if (v10)
        {
          do
          {
            v11 = *v10;
            operator delete(v10);
            v10 = v11;
          }

          while (v11);
        }

        v12 = v7[3];
        v7[3] = 0;
        if (v12)
        {
          operator delete(v12);
        }

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

void sub_1838FFAB4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_1838FE898(v1);
  __cxa_rethrow();
}

void sub_1838FFAE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1838FFB08(va);
  _Unwind_Resume(a1);
}

void sub_1838FFAF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1838FFB08(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1838FFB08(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = v1[5];
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

      v5 = v1[3];
      v1[3] = 0;
      if (v5)
      {
        operator delete(v5);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_1838FFB7C(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_183689098(a1, prime);
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
    v11 = i[2];
    v12 = i[3];
    v13 = v11 ^ (2 * v12);
    v14 = *(a1 + 8);
    if (!*&v14)
    {
      goto LABEL_45;
    }

    v15 = vcnt_s8(v14);
    v15.i16[0] = vaddlv_u8(v15);
    if (v15.u32[0] > 1uLL)
    {
      v16 = v11 ^ (2 * v12);
      if (v13 >= *&v14)
      {
        v16 = v13 % *&v14;
      }
    }

    else
    {
      v16 = (*&v14 - 1) & v13;
    }

    v17 = *(*a1 + 8 * v16);
    if (!v17 || (v18 = *v17) == 0)
    {
LABEL_45:
      operator new();
    }

    if (v15.u32[0] < 2uLL)
    {
      while (1)
      {
        v20 = v18[1];
        if (v20 == v13)
        {
          if (v18[2] == v11 && v18[3] == v12)
          {
            goto LABEL_46;
          }
        }

        else if ((v20 & (*&v14 - 1)) != v16)
        {
          goto LABEL_45;
        }

        v18 = *v18;
        if (!v18)
        {
          goto LABEL_45;
        }
      }
    }

    while (1)
    {
      v22 = v18[1];
      if (v22 == v13)
      {
        break;
      }

      if (v22 >= *&v14)
      {
        v22 %= *&v14;
      }

      if (v22 != v16)
      {
        goto LABEL_45;
      }

LABEL_40:
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_45;
      }
    }

    if (v18[2] != v11 || v18[3] != v12)
    {
      goto LABEL_40;
    }

LABEL_46:
    ;
  }

  return a1;
}

void sub_1838FFF80(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_1836CFA48(v1);
  _Unwind_Resume(a1);
}

void *sub_1838FFFB0(void *result, uint64_t a2, uint64_t a3)
{
  v3 = a2 ^ (2 * a3);
  v4 = result[1];
  if (!*&v4)
  {
    goto LABEL_28;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a2 ^ (2 * a3);
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*result + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_28:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v10 = v8[1];
      if (v10 == v3)
      {
        if (v8[2] == a2 && v8[3] == a3)
        {
          return result;
        }
      }

      else if ((v10 & (*&v4 - 1)) != v6)
      {
        goto LABEL_28;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_28;
      }
    }
  }

  while (1)
  {
    v12 = v8[1];
    if (v12 == v3)
    {
      break;
    }

    if (v12 >= *&v4)
    {
      v12 %= *&v4;
    }

    if (v12 != v6)
    {
      goto LABEL_28;
    }

LABEL_23:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_28;
    }
  }

  if (v8[2] != a2 || v8[3] != a3)
  {
    goto LABEL_23;
  }

  return result;
}

void *sub_18390044C(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (v6[2] == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (*&v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= *&v2)
    {
      v8 %= *&v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_183900764(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1838FFB08(va);
  _Unwind_Resume(a1);
}

uint64_t sub_183900778(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = a3[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *a2;
  v7 = *(*a2 + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a3);
  if (v8 == a2 + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v9 >= *&v3)
    {
      v9 %= *&v3;
    }
  }

  else
  {
    v9 &= *&v3 - 1;
  }

  if (v9 != v4)
  {
LABEL_18:
    if (!*a3)
    {
      goto LABEL_19;
    }

    v10 = *(*a3 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a3;
  if (*a3)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a3;
    }
  }

  *v8 = v11;
  *a3 = 0;
  --a2[3];
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

unint64_t sub_1839008B0(uint64_t a1, __int128 *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a1 + 32;
  v7 = *(a1 + 32);
  if (!v7)
  {
    goto LABEL_40;
  }

  v43 = *a1;
  v8 = *(a2 + 23);
  v9 = v8 >= 0 ? *(a2 + 23) : *(a2 + 1);
  v10 = v8 >= 0 ? a2 : *a2;
  v11 = a1 + 32;
  do
  {
    v12 = *(v7 + 55);
    if (v12 >= 0)
    {
      v13 = *(v7 + 55);
    }

    else
    {
      v13 = *(v7 + 40);
    }

    if (v12 >= 0)
    {
      v14 = (v7 + 32);
    }

    else
    {
      v14 = *(v7 + 32);
    }

    if (v9 >= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v9;
    }

    v16 = memcmp(v14, v10, v15);
    v17 = v13 < v9;
    if (v16)
    {
      v17 = v16 < 0;
    }

    v18 = !v17;
    if (v17)
    {
      v19 = 8;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v11 = v7;
    }

    v7 = *(v7 + v19);
  }

  while (v7);
  v5 = v43;
  if (v11 != v6)
  {
    v22 = *(v11 + 32);
    v21 = v11 + 32;
    v20 = v22;
    v23 = *(v21 + 23);
    if (v23 >= 0)
    {
      v24 = *(v21 + 23);
    }

    else
    {
      v24 = *(v21 + 8);
    }

    if (v23 >= 0)
    {
      v25 = v21;
    }

    else
    {
      v25 = v20;
    }

    if (v24 >= v9)
    {
      v26 = v9;
    }

    else
    {
      v26 = v24;
    }

    v27 = memcmp(v10, v25, v26);
    v28 = v9 < v24;
    if (v27)
    {
      v28 = v27 < 0;
    }

    if (!v28)
    {
      return sub_183915FA4(a1 + 24, a2)[7];
    }
  }

LABEL_40:
  v29 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3);
  sub_183915FA4(a1 + 24, a2)[7] = v29;
  v31 = *(a1 + 8);
  v30 = *(a1 + 16);
  if (v31 >= v30)
  {
    v33 = 0xAAAAAAAAAAAAAAABLL * ((v31 - *a1) >> 3);
    if (v33 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_18368964C();
    }

    v34 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *a1) >> 3);
    v35 = 2 * v34;
    if (2 * v34 <= v33 + 1)
    {
      v35 = v33 + 1;
    }

    if (v34 >= 0x555555555555555)
    {
      v36 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v36 = v35;
    }

    if (v36)
    {
      if (v36 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_183688F00();
    }

    v37 = 24 * v33;
    if (*(a2 + 23) < 0)
    {
      sub_183688F34(v37, *a2, *(a2 + 1));
      v37 = 24 * v33;
    }

    else
    {
      *v37 = *a2;
      *(24 * v33 + 0x10) = *(a2 + 2);
    }

    v38 = 24 * v33 + 24;
    v39 = *(a1 + 8) - *a1;
    v40 = v37 - v39;
    memcpy((v37 - v39), *a1, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    *(a1 + 8) = v38;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_183688F34(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v32 = *a2;
      *(v31 + 16) = *(a2 + 2);
      *v31 = v32;
    }

    *(a1 + 8) = v31 + 24;
    *(a1 + 8) = v31 + 24;
  }

  return v29;
}

void sub_183900B74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_183916158(va);
  _Unwind_Resume(a1);
}

void *sub_183900B90(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[4] = 0;
  a1[2] = 0;
  a1[3] = a1 + 4;
  a1[5] = 0;
  v6 = 1;
  LOWORD(v5) = 44;
  v4 = 1;
  LOWORD(__p) = 35;
  sub_1839008B0(a1, &v5);
  sub_1839008B0(a1, &__p);
  if (v4 < 0)
  {
    operator delete(__p);
    if ((v6 & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((v6 & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v5);
  return a1;
}

void sub_183900C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  sub_18368922C(v21, *(v20 + 32));
  sub_183689748(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_183900C90(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  *a1 = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x1865E5E50](a1 + 128);
  return a1;
}

void *sub_183900DE4@<X0>(void *result@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  v2 = a2 + 1;
  a2[2] = 0;
  *a2 = a2 + 1;
  v3 = result[7];
  v4 = result + 8;
  if (v3 != result + 8)
  {
    do
    {
      result = sub_1836DD38C(a2, v2, &v10, &v9, v3 + 4);
      if (!*result)
      {
        operator new();
      }

      v6 = v3[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v3[2];
          v8 = *v7 == v3;
          v3 = v7;
        }

        while (!v8);
      }

      v3 = v7;
    }

    while (v7 != v4);
  }

  return result;
}

uint64_t sub_183900F20(void *a1)
{
  v2 = a1[10];
  v3 = a1[11];
  v4 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((v3 - v2) >> 3));
  *&v44 = sub_183901900;
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_183916950(v2, v3, &v44, v5, 1);
  v6 = a1[13];
  a1[14] = v6;
  v7 = a1[10];
  if (a1[11] == v7)
  {
    v10 = v6;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      *&v44 = v7 + v8;
      sub_183915A44((a1 + 13), &v44);
      ++v9;
      v7 = a1[10];
      v8 += 72;
    }

    while (v9 < 0x8E38E38E38E38E39 * ((a1[11] - v7) >> 3));
    v10 = a1[13];
    v6 = a1[14];
  }

  v11 = 126 - 2 * __clz((v6->i64 - v10) >> 3);
  *&v44 = sub_18390194C;
  if (v6 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  sub_1836E2510(v10, v6, &v44, v12, 1);
  v13 = a1[13];
  v14 = a1[14];
  v15 = 126 - 2 * __clz((v14->i64 - v13) >> 3);
  *&v44 = sub_18390194C;
  if (v14 == v13)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  result = sub_1836E2510(v13, v14, &v44, v16, 1);
  v18 = a1[4];
  v19 = a1[5];
  if (v18 != v19)
  {
    do
    {
      *v18 = 0;
      *(v18 + 1) = 0;
      v18 += 40;
    }

    while (v18 != v19);
    v18 = a1[4];
  }

  v21 = a1[10];
  v20 = a1[11];
  if (v21 == v20)
  {
    v28 = a1[5];
    v27 = v28 - v18;
    if (v28 == v18)
    {
      return result;
    }

    goto LABEL_27;
  }

  v22 = a1[10];
  do
  {
    ++*&v18[40 * *v22];
    ++*&v18[40 * v22[1] + 8];
    v22 += 9;
  }

  while (v22 != v20);
  v23 = a1[5];
  v24 = *v21;
  *&v18[40 * v24 + 16] = 0;
  if (v18 != v23)
  {
    v25 = v18;
    do
    {
      *(v25 + 2) = v24;
      v26 = *v25;
      v25 += 40;
      v24 += v26;
    }

    while (v25 != v23);
  }

  *(v18 + 3) = 0;
  v27 = v23 - v18;
  if (v23 != v18)
  {
LABEL_27:
    v29 = 0;
    v30 = 0;
    v31 = 0xCCCCCCCCCCCCCCCDLL * (v27 >> 3);
    if (v31 <= 1)
    {
      v31 = 1;
    }

    v32 = v18 + 24;
    do
    {
      *v32 = v30;
      v33 = *(v32 - 2);
      if (!v33 && v29 != a1[3])
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_18389C548(v29, &v41);
        v35 = std::string::insert(&v41, 0, "Node[");
        v36 = *&v35->__r_.__value_.__l.__data_;
        v42.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v42.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        v37 = std::string::append(&v42, "]");
        v38 = *&v37->__r_.__value_.__l.__data_;
        v43.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&v43.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        v39 = std::string::append(&v43, "has in degree zero but is not marked as an initial node");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v45 = v39->__r_.__value_.__r.__words[2];
        v44 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        MEMORY[0x1865E5C60](exception, &v44);
        __cxa_throw(exception, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
      }

      v32 += 5;
      v30 += v33;
      ++v29;
    }

    while (v31 != v29);
  }

  return result;
}

void sub_183901248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v30 - 57) < 0)
  {
    operator delete(*(v30 - 80));
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a21 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a28 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a23);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_4:
    if (a15 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a16);
  if (a15 < 0)
  {
LABEL_5:
    operator delete(__p);
    if ((v29 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }

LABEL_11:
    __cxa_free_exception(v28);
    goto LABEL_12;
  }

LABEL_10:
  if (!v29)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_183901308(uint64_t a1, uint64_t a2)
{
  v8[0] = 0;
  v8[1] = 0;
  v6 = 0;
  v7 = v8;
  __p = 0;
  v5 = 0;
  if (*(a2 + 8) != *a2)
  {
    operator new();
  }

  v3 = 0;
  if (&__p != a2)
  {
    sub_1836DC498(a2, 0, v5, 0x8E38E38E38E38E39 * (v5 >> 3));
    v3 = __p;
  }

  if (v3)
  {
    v5 = v3;
    operator delete(v3);
  }

  sub_1836E1928(v8[0]);
}

void sub_1839018D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_1836E1928(a17);
  _Unwind_Resume(a1);
}

BOOL sub_183901900(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a2[2];
  if (v3 < v4)
  {
    return 1;
  }

  return v3 == v4 && a1[1] < a2[1];
}

void sub_183901960(uint64_t a1, void *a2)
{
  v4 = a2 + 8;
  sub_18368D56C((a2 + 7), a2[8]);
  a2[7] = v4;
  a2[9] = 0;
  v87 = v4;
  *v4 = 0;
  if (a2 != a1)
  {
    sub_1839161C0((a2 + 16), *(a1 + 128), *(a1 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 136) - *(a1 + 128)) >> 3));
    sub_1839164C0((a2 + 19), *(a1 + 152), (a1 + 160));
  }

  v5 = a2[4];
  v6 = (a2 + 4);
  if (a2[5] != v5)
  {
    a2[5] = v5;
  }

  v101 = 0;
  v102 = 0;
  v103 = 0;
  v99 = 0;
  v100 = 0;
  v98 = &v99;
  v96 = 0u;
  v97 = 0u;
  *__p = 0u;
  v7 = sub_183900DE4(a1, &v93);
  v89 = a2;
  v8 = v93;
  if (v93 == v94)
  {
    v11 = *(&v97 + 1);
  }

  else
  {
    v9 = __p[1];
    v10 = v96;
    v11 = *(&v97 + 1);
    do
    {
      v12 = ((v10 - v9) << 6) - 1;
      if (v10 == v9)
      {
        v12 = 0;
      }

      v13 = v97 + v11;
      if (v12 == v13)
      {
        v7 = sub_1837236B0(__p);
        v9 = __p[1];
        v10 = v96;
        v13 = *(&v97 + 1) + v97;
      }

      *(*&v9[(v13 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v13 & 0x1FF)) = v8[4];
      v11 = ++*(&v97 + 1);
      v14 = v8[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v8[2];
          v16 = *v15 == v8;
          v8 = v15;
        }

        while (!v16);
      }

      v8 = v15;
    }

    while (v15 != v94);
  }

  v88 = v6;
  if (v11)
  {
    do
    {
      v17 = *(*(__p[1] + ((v97 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v97 & 0x1FF));
      *&v97 = v97 + 1;
      *(&v97 + 1) = v11 - 1;
      if (v97 >= 0x400)
      {
        operator delete(*__p[1]);
        __p[1] = __p[1] + 8;
        *&v97 = v97 - 512;
      }

      v18 = v99;
      if (!v99)
      {
        goto LABEL_32;
      }

      v19 = &v99;
      v20 = v99;
      do
      {
        v21 = v20[4];
        v22 = v21 >= v17;
        v23 = v21 < v17;
        if (v22)
        {
          v19 = v20;
        }

        v20 = v20[v23];
      }

      while (v20);
      if (v19 == &v99 || v17 < v19[4])
      {
LABEL_32:
        v24 = *(a1 + 32);
        if (*(v24 + 40 * v17 + 8))
        {
          v25 = 0;
          do
          {
            v26 = *(*(a1 + 104) + 8 * *(v24 + 40 * v17 + 24) + 8 * v25);
            v27 = *v26;
            v28 = v102;
            if (v102 >= v103)
            {
              v7 = v101;
              v31 = 0x8E38E38E38E38E39 * ((v102 - v101) >> 3);
              v32 = v31 + 1;
              if (v31 + 1 > 0x38E38E38E38E38ELL)
              {
                sub_1836D58DC();
              }

              if (0x1C71C71C71C71C72 * ((v103 - v101) >> 3) > v32)
              {
                v32 = 0x1C71C71C71C71C72 * ((v103 - v101) >> 3);
              }

              if (0x8E38E38E38E38E39 * ((v103 - v101) >> 3) >= 0x1C71C71C71C71C7)
              {
                v33 = 0x38E38E38E38E38ELL;
              }

              else
              {
                v33 = v32;
              }

              if (v33)
              {
                if (v33 <= 0x38E38E38E38E38ELL)
                {
                  operator new();
                }

                sub_183688F00();
              }

              v34 = 8 * ((v102 - v101) >> 3);
              *v34 = *v26;
              *(v34 + 8) = *(v26 + 8);
              *(v34 + 24) = *(v26 + 24);
              v35 = *(v26 + 48);
              *(v34 + 32) = *(v26 + 32);
              *(v34 + 48) = v35;
              *(v34 + 64) = *(v26 + 64);
              if (v7 != v28)
              {
                v36 = v7;
                v37 = (v34 + v7 - v28);
                do
                {
                  *v37 = *v36;
                  v38 = *(v36 + 2);
                  *(v37 + 1) = *(v36 + 1);
                  *(v37 + 2) = v38;
                  *(v37 + 3) = *(v36 + 3);
                  *(v37 + 8) = *(v36 + 8);
                  v36 += 72;
                  v37 += 72;
                }

                while (v36 != v28);
              }

              v30 = (v34 + 72);
              v101 = (72 * v31 + v7 - v28);
              v102 = (v34 + 72);
              v103 = 0;
              if (v7)
              {
                operator delete(v7);
              }
            }

            else
            {
              *v102 = v27;
              *(v28 + 8) = *(v26 + 8);
              *(v28 + 3) = *(v26 + 24);
              v29 = *(v26 + 48);
              *(v28 + 2) = *(v26 + 32);
              *(v28 + 3) = v29;
              *(v28 + 8) = *(v26 + 64);
              v30 = v28 + 72;
            }

            v102 = v30;
            v39 = v99;
            if (!v99)
            {
              goto LABEL_60;
            }

            v40 = &v99;
            do
            {
              v41 = v39[4];
              v22 = v41 >= v27;
              v42 = v41 < v27;
              if (v22)
              {
                v40 = v39;
              }

              v39 = v39[v42];
            }

            while (v39);
            if (v40 == &v99 || v27 < v40[4])
            {
LABEL_60:
              v43 = __p[1];
              v44 = ((v96 - __p[1]) << 6) - 1;
              if (v96 == __p[1])
              {
                v44 = 0;
              }

              v45 = *(&v97 + 1) + v97;
              if (v44 == *(&v97 + 1) + v97)
              {
                v7 = sub_1837236B0(__p);
                v43 = __p[1];
                v45 = *(&v97 + 1) + v97;
              }

              *(*&v43[(v45 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v45 & 0x1FF)) = v27;
              ++*(&v97 + 1);
            }

            ++v25;
            v24 = *(a1 + 32);
          }

          while (v25 < *(v24 + 40 * v17 + 8));
          v18 = v99;
        }

        if (!v18)
        {
LABEL_71:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v46 = v18;
            v47 = v18[4];
            if (v17 >= v47)
            {
              break;
            }

            v18 = *v46;
            if (!*v46)
            {
              goto LABEL_71;
            }
          }

          if (v47 >= v17)
          {
            break;
          }

          v18 = v46[1];
          if (!v18)
          {
            goto LABEL_71;
          }
        }
      }

      v11 = *(&v97 + 1);
    }

    while (*(&v97 + 1));
  }

  v48 = v100;
  v49 = v89;
  v50 = v89[4];
  v51 = 0xCCCCCCCCCCCCCCCDLL * ((v89[5] - v50) >> 3);
  if (v100 > v51)
  {
    sub_183723D20(v88, v100 - v51);
    v91 = 0;
    v92 = 0;
    v90 = &v91;
    goto LABEL_77;
  }

  if (v100 < v51)
  {
    v89[5] = &v50[40 * v100];
  }

  v91 = 0;
  v92 = 0;
  v90 = &v91;
  if (v48)
  {
LABEL_77:
    if (!(v48 >> 61))
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v53 = v98;
  if (v98 != &v99)
  {
    v52 = 0;
    do
    {
      *(8 * v52) = v53[4];
      v54 = v53[1];
      if (v54)
      {
        do
        {
          v55 = v54;
          v54 = *v54;
        }

        while (v54);
      }

      else
      {
        do
        {
          v55 = v53[2];
          v16 = *v55 == v53;
          v53 = v55;
        }

        while (!v16);
      }

      ++v52;
      v53 = v55;
    }

    while (v55 != &v99);
  }

  v56 = v101;
  for (i = v102; v56 != i; v56 += 72)
  {
    v58 = v91;
    if (!v91)
    {
LABEL_95:
      operator new();
    }

    v59 = *v56;
    v60 = v91;
    while (1)
    {
      while (1)
      {
        v61 = v60;
        v62 = v60[4];
        if (v59 >= v62)
        {
          break;
        }

        v60 = *v61;
        if (!*v61)
        {
          goto LABEL_95;
        }
      }

      if (v62 >= v59)
      {
        break;
      }

      v60 = v61[1];
      if (!v60)
      {
        goto LABEL_95;
      }
    }

    *v56 = v61[5];
    if (!v58)
    {
LABEL_102:
      operator new();
    }

    v63 = *(v56 + 1);
    while (1)
    {
      while (1)
      {
        v64 = v58;
        v65 = v58[4];
        if (v63 >= v65)
        {
          break;
        }

        v58 = *v64;
        if (!*v64)
        {
          goto LABEL_102;
        }
      }

      if (v65 >= v63)
      {
        break;
      }

      v58 = v64[1];
      if (!v58)
      {
        goto LABEL_102;
      }
    }

    *(v56 + 1) = v64[5];
  }

  v66 = v93;
  if (v93 != v94)
  {
    do
    {
      v67 = v91;
      if (!v91)
      {
LABEL_113:
        operator new();
      }

      v68 = v66[4];
      while (1)
      {
        while (1)
        {
          v69 = v67;
          v70 = v67[4];
          if (v68 >= v70)
          {
            break;
          }

          v67 = *v69;
          if (!*v69)
          {
            goto LABEL_113;
          }
        }

        if (v70 >= v68)
        {
          break;
        }

        v67 = v69[1];
        if (!v67)
        {
          goto LABEL_113;
        }
      }

      v71 = v69[5];
      v72 = v87;
LABEL_115:
      v73 = *v72;
      if (!*v72)
      {
LABEL_119:
        operator new();
      }

      while (1)
      {
        v72 = v73;
        v74 = v73[4];
        if (v74 > v71)
        {
          goto LABEL_115;
        }

        if (v74 >= v71)
        {
          break;
        }

        v73 = v72[1];
        if (!v73)
        {
          goto LABEL_119;
        }
      }

      v49 = v89;
      v75 = v89[4];
      if (0xCCCCCCCCCCCCCCCDLL * ((v89[5] - v75) >> 3) >= v71)
      {
        v75[40 * v71 + 32] = 1;
      }

      v76 = v66[1];
      if (v76)
      {
        do
        {
          v77 = v76;
          v76 = *v76;
        }

        while (v76);
      }

      else
      {
        do
        {
          v77 = v66[2];
          v16 = *v77 == v66;
          v66 = v77;
        }

        while (!v16);
      }

      v66 = v77;
    }

    while (v77 != v94);
  }

  sub_183901308(v7, &v101);
  v79 = v101;
  v78 = v102;
  if (v101 != v102)
  {
    v80 = v49[11];
    do
    {
      if (v80 < v49[12])
      {
        *v80 = *v79;
        v81 = v79[2];
        *(v80 + 16) = v79[1];
        *(v80 + 32) = v81;
        *(v80 + 48) = v79[3];
        *(v80 + 64) = *(v79 + 8);
        v80 += 72;
      }

      else
      {
        v80 = sub_1836E1A24(v49 + 10, v79);
      }

      v49[11] = v80;
      v79 = (v79 + 72);
    }

    while (v79 != v78);
  }

  sub_183900F20(v49);
  sub_18368D56C(&v90, v91);
  sub_18368D56C(&v93, v94[0]);
  v82 = __p[1];
  v83 = v96;
  *(&v97 + 1) = 0;
  v84 = (v96 - __p[1]) >> 3;
  if (v84 >= 3)
  {
    do
    {
      operator delete(*v82);
      v83 = v96;
      v82 = (__p[1] + 8);
      __p[1] = v82;
      v84 = (v96 - v82) >> 3;
    }

    while (v84 > 2);
  }

  if (v84 == 1)
  {
    v85 = 256;
    goto LABEL_140;
  }

  if (v84 == 2)
  {
    v85 = 512;
LABEL_140:
    *&v97 = v85;
  }

  if (v82 != v83)
  {
    do
    {
      v86 = *v82++;
      operator delete(v86);
    }

    while (v82 != v83);
    if (v96 != __p[1])
    {
      *&v96 = v96 + ((__p[1] - v96 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  sub_18368D56C(&v98, v99);
  if (v101)
  {
    v102 = v101;
    operator delete(v101);
  }
}

void sub_18390256C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, void *a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, void *a27)
{
  sub_18368D56C(&a16, a17);
  sub_183685FAC(&a19);
  sub_18368D56C(&a26, a27);
  v29 = *(v27 - 112);
  if (v29)
  {
    *(v27 - 104) = v29;
    operator delete(v29);
  }

  _Unwind_Resume(a1);
}

void sub_183902600(void *a1, void *a2, int a3)
{
  v3 = a2;
  v4 = a1;
  v5 = a1[4];
  v154 = a1 + 4;
  v6 = a1[5];
  if (v6 != v5)
  {
    v7 = 0;
    v8 = (v6 - v5) >> 3;
    if (0xCCCCCCCCCCCCCCCDLL * v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 0xCCCCCCCCCCCCCCCDLL * v8;
    }

    while (1)
    {
      if ((*(v5 + 40 * v7 + 32) & 1) == 0)
      {
        v10 = *(v5 + 40 * v7 + 8);
        if (v10 >= 2)
        {
          v11 = 0;
          v12 = 0;
          v13 = *(v5 + 40 * v7 + 8);
          do
          {
            if (!*(*(a1[13] + 8 * *(v5 + 40 * v7 + 24) + 8 * v12) + 24))
            {
              ++v11;
              v13 = *(v5 + 40 * v7 + 8);
            }

            ++v12;
          }

          while (v12 < v13);
          if (v11)
          {
            break;
          }
        }
      }

      if (++v7 == v9)
      {
        goto LABEL_15;
      }
    }

    if (v11 != (v11 == v10))
    {
      v165 = 0;
      v166 = 0;
      v167 = 0;
      v162 = &v162;
      v163 = &v162;
      v164 = 0;
      operator new();
    }

LABEL_15:
    v14 = v6 - v5;
    v3 = a2;
    if (v14)
    {
      v169 = 0u;
      v170 = 0u;
      v168 = 0u;
      if ((v14 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_18369F168();
    }
  }

  sub_18368D56C((v3 + 7), v3[8]);
  v3[7] = v3 + 8;
  v150 = v3 + 8;
  v3[8] = 0;
  v15 = v3[4];
  v3[9] = 0;
  v149 = (v3 + 4);
  if (v3[5] != v15)
  {
    v3[5] = v15;
  }

  v165 = 0;
  v166 = 0;
  v167 = 0;
  v17 = v4[4];
  v16 = v4[5];
  v163 = 0;
  v164 = 0;
  v161[1] = 0;
  v162 = &v163;
  v160[2] = v161;
  v161[0] = 0;
  sub_183900DE4(v4, &v159);
  if (v16 != v17)
  {
    if (!((0xCCCCCCCCCCCCCCCDLL * ((v16 - v17) >> 3)) >> 61))
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v169 = 0u;
  v170 = 0u;
  v168 = 0u;
  v158[0] = 0;
  v158[1] = 0;
  sub_1837236B0(&v168);
  v157 = 0;
  *(*(*(&v168 + 1) + (((v170 + *(&v170 + 1)) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v170 + *(&v170 + 1)) & 0x1FF)) = 0;
  v18 = __CFADD__(*(&v170 + 1), 1);
  v19 = ++*(&v170 + 1);
  if (v18)
  {
    goto LABEL_25;
  }

  v157 = 0;
LABEL_47:
  v30 = *(*(*(&v168 + 1) + ((v170 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v170 & 0x1FF));
  *&v170 = v170 + 1;
  *(&v170 + 1) = v19 - 1;
  if (v170 >= 0x400)
  {
    operator delete(**(&v168 + 1));
    *(&v168 + 1) += 8;
    *&v170 = v170 - 512;
  }

  v31 = v158[0];
  if (v158[0])
  {
    v32 = v158;
    v33 = v158[0];
    do
    {
      v34 = v33[4];
      v18 = v34 >= v30;
      v35 = v34 < v30;
      if (v18)
      {
        v32 = v33;
      }

      v33 = v33[v35];
    }

    while (v33);
    if (v32 != v158 && v30 >= v32[4])
    {
      goto LABEL_46;
    }
  }

  v36 = *v154;
  if (!*(*v154 + 40 * v30))
  {
    goto LABEL_216;
  }

  v37 = 0;
  v153 = v30;
LABEL_61:
  v38 = (v4[10] + 72 * *(v36 + 40 * v30 + 16) + 72 * v37);
  v40 = *v38;
  v39 = v38[1];
  v41 = v163;
  if (!v38[3])
  {
    if (v163)
    {
      v49 = &v163;
      v50 = v163;
      do
      {
        v51 = v50[4];
        v18 = v51 >= v40;
        v52 = v51 < v40;
        if (v18)
        {
          v49 = v50;
        }

        v50 = v50[v52];
      }

      while (v50);
      if (v49 == &v163 || v40 < v49[4])
      {
        v53 = v163;
        while (1)
        {
          while (1)
          {
            v54 = v53;
            v55 = v53[4];
            if (v40 >= v55)
            {
              break;
            }

            v53 = *v54;
            if (!*v54)
            {
              goto LABEL_89;
            }
          }

          if (v55 >= v40)
          {
            break;
          }

          v53 = v54[1];
          if (!v53)
          {
            goto LABEL_89;
          }
        }

        v54[5] = v157++;
      }

      if (v41)
      {
        v100 = v41;
        do
        {
          while (1)
          {
            v101 = v100;
            v102 = v100[4];
            if (v40 >= v102)
            {
              break;
            }

            v100 = *v101;
            if (!*v101)
            {
              goto LABEL_188;
            }
          }

          if (v102 >= v40)
          {
            v103 = v101[5];
            v104 = &v163;
            v105 = v41;
            do
            {
              v106 = v105[4];
              v18 = v106 >= v39;
              v107 = v106 < v39;
              if (v18)
              {
                v104 = v105;
              }

              v105 = v105[v107];
            }

            while (v105);
            if (v104 != &v163 && v39 >= v104[4])
            {
              goto LABEL_203;
            }

            while (1)
            {
              v108 = v41;
              v109 = v41[4];
              if (v39 < v109)
              {
                v41 = *v108;
                if (!*v108)
                {
                  goto LABEL_201;
                }
              }

              else
              {
                if (v109 >= v39)
                {
                  v108[5] = v103;
                  goto LABEL_203;
                }

                v41 = v108[1];
                if (!v41)
                {
LABEL_201:
                  operator new();
                }
              }
            }
          }

          v100 = v101[1];
        }

        while (v100);
      }

LABEL_188:
      operator new();
    }

LABEL_89:
    operator new();
  }

  if (!v163)
  {
LABEL_75:
    operator new();
  }

  v42 = &v163;
  v43 = v163;
  do
  {
    v44 = v43[4];
    v18 = v44 >= v40;
    v45 = v44 < v40;
    if (v18)
    {
      v42 = v43;
    }

    v43 = v43[v45];
  }

  while (v43);
  if (v42 == &v163 || v40 < v42[4])
  {
    v46 = v163;
    while (1)
    {
      while (1)
      {
        v47 = v46;
        v48 = v46[4];
        if (v40 >= v48)
        {
          break;
        }

        v46 = *v47;
        if (!*v47)
        {
          goto LABEL_75;
        }
      }

      if (v48 >= v40)
      {
        break;
      }

      v46 = v47[1];
      if (!v46)
      {
        goto LABEL_75;
      }
    }

    v47[5] = v157++;
  }

  if (!v41)
  {
LABEL_97:
    operator new();
  }

  v56 = v41;
  while (1)
  {
    while (1)
    {
      v57 = v56;
      v58 = v56[4];
      if (v40 >= v58)
      {
        break;
      }

      v56 = *v57;
      if (!*v57)
      {
        goto LABEL_97;
      }
    }

    if (v58 >= v40)
    {
      break;
    }

    v56 = v57[1];
    if (!v56)
    {
      goto LABEL_97;
    }
  }

  v59 = v57[5];
  v60 = &v163;
  v61 = v41;
  do
  {
    v62 = v61[4];
    v18 = v62 >= v39;
    v63 = v62 < v39;
    if (v18)
    {
      v60 = v61;
    }

    v61 = v61[v63];
  }

  while (v61);
  if (v60 != &v163 && v39 >= v60[4])
  {
    goto LABEL_114;
  }

  v64 = v41;
  while (1)
  {
    while (1)
    {
      v65 = v64;
      v66 = v64[4];
      if (v39 >= v66)
      {
        break;
      }

      v64 = *v65;
      if (!*v65)
      {
        goto LABEL_110;
      }
    }

    if (v66 >= v39)
    {
      break;
    }

    v64 = v65[1];
    if (!v64)
    {
LABEL_110:
      operator new();
    }
  }

  v65[5] = v157++;
  while (1)
  {
LABEL_114:
    if (!v41)
    {
LABEL_118:
      operator new();
    }

    while (1)
    {
      v67 = v41;
      v68 = v41[4];
      if (v39 < v68)
      {
        break;
      }

      if (v68 >= v39)
      {
        v69 = v67[5];
        ++*(8 * v59);
        v70 = v4[16] + 24 * v38[3];
        v71 = *(v70 + 23);
        if ((v71 & 0x80u) == 0)
        {
          v72 = (v4[16] + 24 * v38[3]);
        }

        else
        {
          v72 = *v70;
        }

        if ((v71 & 0x80u) != 0)
        {
          v71 = *(v70 + 8);
        }

        if (!v71)
        {
          LODWORD(v73) = 0;
          goto LABEL_156;
        }

        v73 = *v72 == 45;
        if (*v72 != 45)
        {
          v84 = 1;
          if (v72[v73] == 48)
          {
            goto LABEL_150;
          }

LABEL_155:
          v76 = *v72 == 45;
          if (v73 >= v71)
          {
            goto LABEL_156;
          }

          goto LABEL_129;
        }

        if (v71 == 1)
        {
          LODWORD(v73) = 1;
          goto LABEL_156;
        }

        v84 = 2;
        if (v72[v73] != 48)
        {
          goto LABEL_155;
        }

LABEL_150:
        if ((v72[v84] | 0x20) != 0x78)
        {
          goto LABEL_155;
        }

        v76 = 2;
        if (*v72 == 45)
        {
          v76 = 3;
        }

        if (v76 >= v71)
        {
LABEL_156:
          v79 = v37;
          v80 = v59;
          v74 = 0;
          goto LABEL_157;
        }

LABEL_129:
        v74 = 0;
        while (2)
        {
          v78 = v72[v76];
          if ((v78 - 48) <= 9)
          {
            v75 = (v78 - 48) | (16 * v74);
            ++v76;
            v77 = v75 < v74;
            if (v76 >= v71)
            {
              goto LABEL_138;
            }

LABEL_131:
            v74 = v75;
            if (v77)
            {
              goto LABEL_138;
            }

            continue;
          }

          break;
        }

        if ((v78 - 97) <= 5)
        {
          v75 = v78 + 16 * v74 - 87;
          ++v76;
          v77 = v75 < v74;
          if (v76 >= v71)
          {
            goto LABEL_138;
          }

          goto LABEL_131;
        }

        if ((v78 - 65) > 5)
        {
          v79 = v37;
          v80 = v59;
LABEL_157:
          if (v73)
          {
            v83 = -v74;
          }

          else
          {
            v83 = v74;
          }

          goto LABEL_160;
        }

        v75 = v78 + 16 * v74 - 55;
        ++v76;
        v77 = v75 < v74;
        if (v76 < v71)
        {
          goto LABEL_131;
        }

LABEL_138:
        v79 = v37;
        v80 = v59;
        if (*v72 == 45)
        {
          v81 = 0x80000000;
        }

        else
        {
          v81 = 0x7FFFFFFF;
        }

        if (v73)
        {
          v82 = -v75;
        }

        else
        {
          v82 = v75;
        }

        if (v77)
        {
          v83 = v81;
        }

        else
        {
          v83 = v82;
        }

LABEL_160:
        v85 = sub_1839008B0((a2 + 16), v70);
        v86 = v85;
        if (a3)
        {
          v87 = v83;
        }

        else
        {
          v87 = v85;
        }

        v88 = v38[4];
        v90 = v38[6];
        v89 = v38[7];
        v91 = v166;
        if (v166 >= v167)
        {
          v93 = v165;
          v94 = 0x8E38E38E38E38E39 * ((v166 - v165) >> 3);
          v95 = v94 + 1;
          if (v94 + 1 > 0x38E38E38E38E38ELL)
          {
            sub_1836D58DC();
          }

          if (0x1C71C71C71C71C72 * ((v167 - v165) >> 3) > v95)
          {
            v95 = 0x1C71C71C71C71C72 * ((v167 - v165) >> 3);
          }

          if (0x8E38E38E38E38E39 * ((v167 - v165) >> 3) >= 0x1C71C71C71C71C7)
          {
            v96 = 0x38E38E38E38E38ELL;
          }

          else
          {
            v96 = v95;
          }

          if (v96)
          {
            if (v96 <= 0x38E38E38E38E38ELL)
            {
              operator new();
            }

            sub_183688F00();
          }

          v97 = (8 * ((v166 - v165) >> 3));
          *v97 = v80;
          v97[1] = v69;
          v97[2] = v87;
          v97[3] = v86;
          v97[4] = v88;
          v97[6] = v90;
          v97[7] = v89;
          if (v93 != v91)
          {
            v98 = v93;
            v99 = v97 + v93 - v91;
            do
            {
              *v99 = *v98;
              *(v99 + 1) = v98[1];
              *(v99 + 2) = v98[2];
              *(v99 + 3) = v98[3];
              *(v99 + 8) = *(v98 + 8);
              v98 = (v98 + 72);
              v99 += 72;
            }

            while (v98 != v91);
          }

          v92 = v97 + 9;
          v165 = 72 * v94 + v93 - v91;
          v166 = v97 + 9;
          v167 = 0;
          v4 = a1;
          v37 = v79;
          if (v93)
          {
            operator delete(v93);
          }
        }

        else
        {
          *v166 = v80;
          v91[1] = v69;
          v91[2] = v87;
          v91[3] = v85;
          v91[4] = v88;
          v92 = v91 + 9;
          v91[6] = v90;
          v91[7] = v89;
          v4 = a1;
          v37 = v79;
        }

        v166 = v92;
LABEL_203:
        v110 = v158[0];
        if (!v158[0])
        {
          goto LABEL_211;
        }

        v111 = v158;
        do
        {
          v112 = v110[4];
          v18 = v112 >= v39;
          v113 = v112 < v39;
          if (v18)
          {
            v111 = v110;
          }

          v110 = v110[v113];
        }

        while (v110);
        if (v111 == v158 || v39 < v111[4])
        {
LABEL_211:
          v114 = *(&v168 + 1);
          v115 = ((v169 - *(&v168 + 1)) << 6) - 1;
          if (v169 == *(&v168 + 1))
          {
            v115 = 0;
          }

          v116 = *(&v170 + 1) + v170;
          if (v115 == *(&v170 + 1) + v170)
          {
            sub_1837236B0(&v168);
            v114 = *(&v168 + 1);
            v116 = *(&v170 + 1) + v170;
          }

          *(*(v114 + ((v116 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v116 & 0x1FF)) = v39;
          ++*(&v170 + 1);
        }

        ++v37;
        v36 = *v154;
        v30 = v153;
        if (v37 < *(*v154 + 40 * v153))
        {
          goto LABEL_61;
        }

        v31 = v158[0];
LABEL_216:
        if (!v31)
        {
LABEL_222:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v117 = v31;
            v118 = v31[4];
            if (v30 >= v118)
            {
              break;
            }

            v31 = *v117;
            if (!*v117)
            {
              goto LABEL_222;
            }
          }

          if (v118 >= v30)
          {
            break;
          }

          v31 = v117[1];
          if (!v31)
          {
            goto LABEL_222;
          }
        }

LABEL_46:
        v19 = *(&v170 + 1);
        if (*(&v170 + 1))
        {
          goto LABEL_47;
        }

LABEL_25:
        if (!v164 || v4[5] == v4[4])
        {
LABEL_44:
          v28 = a2[4];
          v29 = 0xCCCCCCCCCCCCCCCDLL * ((a2[5] - v28) >> 3);
          if (v157 <= v29)
          {
            if (v157 < v29)
            {
              a2[5] = v28 + 40 * v157;
            }
          }

          else
          {
            sub_183723D20(v149, v157 - v29);
          }

          v119 = v159;
          if (v159 == v160)
          {
            v156 = -1;
          }

          else
          {
            do
            {
              v120 = v163;
              if (!v163)
              {
LABEL_234:
                operator new();
              }

              v121 = v119[4];
              while (1)
              {
                while (1)
                {
                  v122 = v120;
                  v123 = v120[4];
                  if (v121 >= v123)
                  {
                    break;
                  }

                  v120 = *v122;
                  if (!*v122)
                  {
                    goto LABEL_234;
                  }
                }

                if (v123 >= v121)
                {
                  break;
                }

                v120 = v122[1];
                if (!v120)
                {
                  goto LABEL_234;
                }
              }

              v124 = v122[5];
              v125 = v150;
LABEL_236:
              v126 = *v125;
              if (!*v125)
              {
LABEL_240:
                operator new();
              }

              while (1)
              {
                v125 = v126;
                v127 = v126[4];
                if (v127 > v124)
                {
                  goto LABEL_236;
                }

                if (v127 >= v124)
                {
                  break;
                }

                v126 = v125[1];
                if (!v126)
                {
                  goto LABEL_240;
                }
              }

              v128 = a2[4];
              if (0xCCCCCCCCCCCCCCCDLL * ((a2[5] - v128) >> 3) >= v124)
              {
                *(v128 + 40 * v124 + 32) = 1;
              }

              v129 = v163;
              if (!v163)
              {
LABEL_249:
                operator new();
              }

              v130 = v119[4];
              while (1)
              {
                while (1)
                {
                  v131 = v129;
                  v132 = v129[4];
                  if (v130 >= v132)
                  {
                    break;
                  }

                  v129 = *v131;
                  if (!*v131)
                  {
                    goto LABEL_249;
                  }
                }

                if (v132 >= v130)
                {
                  break;
                }

                v129 = v131[1];
                if (!v129)
                {
                  goto LABEL_249;
                }
              }

              v156 = v131[5];
              v133 = v119[1];
              if (v133)
              {
                do
                {
                  v134 = v133;
                  v133 = *v133;
                }

                while (v133);
              }

              else
              {
                do
                {
                  v134 = v119[2];
                  v143 = *v134 == v119;
                  v119 = v134;
                }

                while (!v143);
              }

              v119 = v134;
            }

            while (v134 != v160);
          }

          if (v157)
          {
            for (i = 0; i != v157; ++i)
            {
              if (!*(8 * i))
              {
                if (i == v156)
                {
                  operator new();
                }

                for (j = v161[0]; j; j = *v137)
                {
                  while (1)
                  {
                    v137 = j;
                    v138 = j[4];
                    if (i < v138)
                    {
                      break;
                    }

                    if (v138 >= i)
                    {
                      v139 = v137[5];
                      v140 = *v154;
                      if (v163)
                      {
                        do
                        {
                          v144 = *(v140 + 40 * v139);
                          if (!v144)
                          {
                            break;
                          }

                          v139 = *(v4[10] + 72 * *(v140 + 40 * v139 + 16) + 72 * v144 + 8);
                          v142 = &v163;
                          v145 = v163;
                          do
                          {
                            v146 = v145[4];
                            v18 = v146 >= v139;
                            v147 = v146 < v139;
                            if (v18)
                            {
                              v142 = v145;
                            }

                            v145 = v145[v147];
                          }

                          while (v145);
                          if (v142 == &v163 || v139 < v142[4])
                          {
                            v142 = &v163;
                          }

                          v143 = !*(8 * v142[5]) && *(v140 + 40 * v139 + 32) == 0;
                        }

                        while (v143);
                      }

                      else
                      {
                        do
                        {
                          v141 = *(v140 + 40 * v139);
                          if (!v141)
                          {
                            break;
                          }

                          if (*(8 * v168))
                          {
                            break;
                          }

                          v139 = *(v4[10] + 72 * *(v140 + 40 * v139 + 16) + 72 * v141 + 8);
                        }

                        while ((*(v140 + 40 * v139 + 32) & 1) == 0);
                      }

                      operator new();
                    }

                    j = v137[1];
                    if (!j)
                    {
                      goto LABEL_269;
                    }
                  }
                }

LABEL_269:
                operator new();
              }
            }
          }

          if (v166 != v165)
          {
            v148 = 0;
            do
            {
              ++v148;
            }

            while (v148 < 0x8E38E38E38E38E39 * ((v166 - v165) >> 3));
          }

          operator new();
        }

        v20 = 0;
LABEL_29:
        for (k = v163; ; k = *v22)
        {
          if (!k)
          {
LABEL_35:
            operator new();
          }

          while (1)
          {
            v22 = k;
            v23 = k[4];
            if (v20 < v23)
            {
              break;
            }

            if (v23 >= v20)
            {
              v24 = v22[5];
              v25 = v161[0];
LABEL_38:
              if (!v25)
              {
LABEL_42:
                operator new();
              }

              while (1)
              {
                v26 = v25;
                v27 = v25[4];
                if (v24 < v27)
                {
                  v25 = *v26;
                  goto LABEL_38;
                }

                if (v27 >= v24)
                {
                  break;
                }

                v25 = v26[1];
                if (!v25)
                {
                  goto LABEL_42;
                }
              }

              v26[5] = v20++;
              if (v20 >= 0xCCCCCCCCCCCCCCCDLL * ((v4[5] - v4[4]) >> 3))
              {
                goto LABEL_44;
              }

              goto LABEL_29;
            }

            k = v22[1];
            if (!k)
            {
              goto LABEL_35;
            }
          }
        }
      }

      v41 = v67[1];
      if (!v41)
      {
        goto LABEL_118;
      }
    }

    v41 = *v67;
  }
}

void sub_1839074C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, void *a35, uint64_t a36, char a37, void *a38)
{
  sub_18368D56C(&a34, a35);
  v40 = *(v38 - 152);
  v41 = *(v38 - 144);
  *(v38 - 120) = 0;
  v42 = v41 - v40;
  if (v42 >= 3)
  {
    do
    {
      operator delete(*v40);
      v41 = *(v38 - 144);
      v40 = (*(v38 - 152) + 8);
      *(v38 - 152) = v40;
      v42 = v41 - v40;
    }

    while (v42 > 2);
  }

  if (v42 == 1)
  {
    v43 = 256;
  }

  else
  {
    if (v42 != 2)
    {
LABEL_8:
      if (v40 != v41)
      {
        do
        {
          v44 = *v40++;
          operator delete(v44);
        }

        while (v40 != v41);
        v46 = *(v38 - 152);
        v45 = *(v38 - 144);
        if (v45 != v46)
        {
          *(v38 - 144) = v45 + ((v46 - v45 + 7) & 0xFFFFFFFFFFFFFFF8);
        }
      }

      v47 = *(v38 - 160);
      if (v47)
      {
        operator delete(v47);
      }

      sub_18368D56C(&a37, a38);
      sub_1836E1928(*(v38 - 224));
      if (*(v38 - 192))
      {
        v48 = *(v38 - 200);
        v49 = *(*(v38 - 208) + 8);
        v50 = *v48;
        *(v50 + 8) = v49;
        *v49 = v50;
        *(v38 - 192) = 0;
        if (v48 != (v38 - 208))
        {
          do
          {
            v51 = v48[1];
            operator delete(v48);
            v48 = v51;
          }

          while (v51 != (v38 - 208));
        }
      }

      v52 = *(v38 - 184);
      if (v52)
      {
        *(v38 - 176) = v52;
        operator delete(v52);
      }

      _Unwind_Resume(a1);
    }

    v43 = 512;
  }

  *(v38 - 128) = v43;
  goto LABEL_8;
}

void sub_183907728(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = *(a1 + 32);
  v9 = a1 + 32;
  if (*(a1 + 40) != v8)
  {
    *(a1 + 40) = v8;
  }

  v10 = (a1 + 64);
  sub_18368D56C(a1 + 56, *(a1 + 64));
  *(a1 + 56) = v10;
  *(a1 + 72) = 0;
  *v10 = 0;
  __p = 0;
  v35 = 0;
  v36 = 0;
  v32 = 0;
  v33 = 0;
  v31 = &v32;
  sub_18368D56C(a1 + 208, *(a1 + 216));
  *(a1 + 208) = a1 + 216;
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  v30[0] = 0;
  v30[1] = 0;
  v28[1] = 0;
  v29 = v30;
  v27 = v28;
  v28[0] = 0;
  sub_183907A64(a1, a2, a3, *(a2 + 24), *(a3 + 24), &v31, &__p, &v29, &v27, a4);
  v12 = *(a1 + 32);
  v13 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 40) - v12) >> 3);
  if (v33 <= v13)
  {
    if (v33 < v13)
    {
      *(a1 + 40) = v12 + 40 * v33;
    }
  }

  else
  {
    sub_183723D20(v9, v33 - v13);
  }

  sub_183901308(v11, &__p);
  v14 = __p;
  v15 = v35;
  if (__p != v35)
  {
    v16 = *(a1 + 88);
    do
    {
      if (v16 < *(a1 + 96))
      {
        *v16 = *v14;
        v17 = v14[2];
        *(v16 + 16) = v14[1];
        *(v16 + 32) = v17;
        *(v16 + 48) = v14[3];
        *(v16 + 64) = *(v14 + 8);
        v16 += 72;
      }

      else
      {
        v16 = sub_1836E1A24((a1 + 80), v14);
      }

      *(a1 + 88) = v16;
      v14 = (v14 + 72);
    }

    while (v14 != v15);
  }

  sub_183900F20(a1);
  v18 = v27;
  if (v27 != v28)
  {
    do
    {
      v19 = v18[4];
      v20 = *v10;
      if (!*v10)
      {
LABEL_22:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
          if (v22 <= v19)
          {
            break;
          }

          v20 = *v21;
          if (!*v21)
          {
            goto LABEL_22;
          }
        }

        if (v22 >= v19)
        {
          break;
        }

        v20 = v21[1];
        if (!v20)
        {
          goto LABEL_22;
        }
      }

      v23 = *(a1 + 32);
      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 40) - v23) >> 3) >= v19)
      {
        *(v23 + 40 * v19 + 32) = 1;
      }

      v24 = v18[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v18[2];
          v26 = *v25 == v18;
          v18 = v25;
        }

        while (!v26);
      }

      v18 = v25;
    }

    while (v25 != v28);
  }

  sub_18368D56C(&v27, v28[0]);
  sub_18368D56C(&v29, v30[0]);
  sub_1836E1928(v32);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }
}

void sub_183907A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, char a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, void *__p, uint64_t a21)
{
  sub_18368D56C(&a11, a12);
  sub_18368D56C(&a14, a15);
  sub_1836E1928(a18);
  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_183907A64(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v11 = a4;
  v14 = *(a6 + 8);
  if (!v14)
  {
    goto LABEL_25;
  }

  v15 = (a6 + 8);
  do
  {
    v16 = v14[4];
    v18 = v16 == a4;
    v17 = v16 < a4;
    if (v18)
    {
      v17 = v14[5] < a5;
    }

    v18 = !v17;
    v19 = v17;
    if (v18)
    {
      v15 = v14;
    }

    v14 = v14[v19];
  }

  while (v14);
  if (v15 == (a6 + 8))
  {
    goto LABEL_25;
  }

  v20 = v15[4];
  v18 = v20 == a4;
  v21 = v20 <= a4;
  if (v18)
  {
    v21 = v15[5] <= a5;
  }

  if (!v21)
  {
    goto LABEL_25;
  }

  v22 = v15[6];
  if (v22 == -1)
  {
    goto LABEL_25;
  }

  v23 = *(a8 + 8);
  if (!v23)
  {
    goto LABEL_25;
  }

  v24 = a8 + 8;
  do
  {
    v25 = *(v23 + 32);
    v26 = v25 >= v22;
    v27 = v25 < v22;
    if (v26)
    {
      v24 = v23;
    }

    v23 = *(v23 + 8 * v27);
  }

  while (v23);
  if (v24 == a8 + 8 || v22 < *(v24 + 32))
  {
LABEL_25:
    v87 = (a6 + 8);
    v98 = *(a6 + 16);
    v91 = sub_1839096BC(a6, a4, a5, &v98);
    v28 = *(a2 + 32);
    if (*(v28 + 40 * v11))
    {
      v29 = 0;
      v30 = (a3 + 192);
      v88 = v11;
      v93 = (a3 + 192);
      do
      {
        v90 = v29;
        v31 = *(a2 + 80) + 72 * *(v28 + 40 * v11 + 16) + 72 * v29;
        v32 = *(v31 + 16);
        v97 = *(v31 + 8);
        v92 = v31;
        v33 = *(a3 + 32);
        v34 = *(v33 + 40 * a5);
        if (v34 <= 0xA)
        {
          if (v34)
          {
            v46 = 0;
            v47 = (*(a3 + 80) + 72 * *(v33 + 40 * a5 + 16) + 16);
            do
            {
              v48 = *v47;
              v47 += 9;
              if (v48 == v32)
              {
                goto LABEL_111;
              }
            }

            while (v34 != ++v46);
          }
        }

        else
        {
          v35 = *v30;
          if (*v30)
          {
            v36 = v30;
            v37 = *v30;
            do
            {
              v38 = v37[4];
              v26 = v38 >= a5;
              v39 = v38 < a5;
              if (v26)
              {
                v36 = v37;
              }

              v37 = v37[v39];
            }

            while (v37);
            if (v36 != v30 && v36[4] <= a5)
            {
              if (v35)
              {
                goto LABEL_66;
              }

LABEL_69:
              operator new();
            }
          }

          v102[0] = 0;
          v102[1] = 0;
          v101 = v102;
          v99 = a5;
          sub_183915B5C(v100, &v101);
          v40 = *v30;
          if (!*v30)
          {
LABEL_43:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v41 = v40;
              v42 = v40[4];
              if (v99 >= v42)
              {
                break;
              }

              v40 = *v41;
              if (!*v41)
              {
                goto LABEL_43;
              }
            }

            if (v42 >= v99)
            {
              break;
            }

            v40 = v41[1];
            if (!v40)
            {
              goto LABEL_43;
            }
          }

          sub_18368D56C(v100, v100[1]);
          v43 = *(a3 + 32);
          if (*(v43 + 40 * a5))
          {
            v44 = 0;
            v45 = 0;
            do
            {
              v49 = v45;
              v45 = *(*(a3 + 80) + 72 * *(v43 + 40 * a5 + 16) + 72 * v44 + 16);
              if (v49 != v45)
              {
                v50 = *v30;
                if (*v30)
                {
                  do
                  {
                    while (1)
                    {
                      v51 = v50;
                      v52 = v50[4];
                      if (v52 <= a5)
                      {
                        break;
                      }

                      v50 = *v51;
                      if (!*v51)
                      {
                        goto LABEL_61;
                      }
                    }

                    if (v52 >= a5)
                    {
                      operator new();
                    }

                    v50 = v51[1];
                  }

                  while (v50);
                }

LABEL_61:
                operator new();
              }

              ++v44;
              v43 = *(a3 + 32);
            }

            while (*(v43 + 40 * a5) > v44);
          }

          sub_18368D56C(&v101, v102[0]);
          v35 = *v30;
          if (!*v30)
          {
            goto LABEL_69;
          }

          while (1)
          {
LABEL_66:
            while (1)
            {
              v53 = v35;
              v54 = v35[4];
              if (v54 <= a5)
              {
                break;
              }

              v35 = *v53;
              if (!*v53)
              {
                goto LABEL_69;
              }
            }

            if (v54 >= a5)
            {
              break;
            }

            v35 = v53[1];
            if (!v35)
            {
              goto LABEL_69;
            }
          }

          v57 = v53[6];
          v56 = v53 + 6;
          v55 = v57;
          if (!v57)
          {
            goto LABEL_78;
          }

          v58 = v56;
          do
          {
            v59 = v55[4];
            v26 = v59 >= v32;
            v60 = v59 < v32;
            if (v26)
            {
              v58 = v55;
            }

            v55 = v55[v60];
          }

          while (v55);
          if (v58 == v56 || v58[4] > v32)
          {
LABEL_78:
            v58 = v56;
            v61 = *v30;
            if (*v30)
            {
              goto LABEL_83;
            }

LABEL_86:
            operator new();
          }

          v61 = *v30;
          if (!*v30)
          {
            goto LABEL_86;
          }

          while (1)
          {
LABEL_83:
            while (1)
            {
              v62 = v61;
              v63 = v61[4];
              if (v63 <= a5)
              {
                break;
              }

              v61 = *v62;
              if (!*v62)
              {
                goto LABEL_86;
              }
            }

            if (v63 >= a5)
            {
              break;
            }

            v61 = v62[1];
            if (!v61)
            {
              goto LABEL_86;
            }
          }

          v30 = (a3 + 192);
          if (v58 != v62 + 6)
          {
            v64 = *v93;
            if (!*v93)
            {
LABEL_94:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v65 = v64;
                v66 = v64[4];
                if (v66 <= a5)
                {
                  break;
                }

                v64 = *v65;
                if (!*v65)
                {
                  goto LABEL_94;
                }
              }

              if (v66 >= a5)
              {
                break;
              }

              v64 = v65[1];
              if (!v64)
              {
                goto LABEL_94;
              }
            }

            v67 = v65[6];
            if (!v67)
            {
LABEL_101:
              operator new();
            }

            while (1)
            {
              while (1)
              {
                v68 = v67;
                v69 = v67[4];
                if (v69 <= v32)
                {
                  break;
                }

                v67 = *v68;
                if (!*v68)
                {
                  goto LABEL_101;
                }
              }

              if (v69 >= v32)
              {
                break;
              }

              v67 = v68[1];
              if (!v67)
              {
                goto LABEL_101;
              }
            }

            v30 = (a3 + 192);
            v46 = v68[5];
            if (a5)
            {
              goto LABEL_109;
            }

            goto LABEL_105;
          }
        }

        v46 = -1;
        if (a5)
        {
          goto LABEL_109;
        }

LABEL_105:
        if (a10 && v46 == -1)
        {
          if ((sub_183909340(a1, a2, a3, a6, v91, v97, 0, v92, 0, a9, a7, 1) & 1) == 0)
          {
            LOBYTE(v85) = 1;
            sub_183907A64(a1, a2, a3, v97, 0, a6, a7, a8, a9, v85);
          }

          goto LABEL_27;
        }

LABEL_109:
        if (v46 != -1)
        {
          v33 = *(a3 + 32);
          v34 = *(v33 + 40 * a5);
LABEL_111:
          if (v46 < v34)
          {
            v70 = 72 * v46;
            do
            {
              v71 = *(a3 + 80) + 72 * *(v33 + 40 * a5 + 16) + v70;
              if (*(v71 + 16) != v32)
              {
                break;
              }

              v72 = *(v71 + 8);
              if ((sub_183909340(a1, a2, a3, a6, v91, v97, v72, v92, v71, a9, a7, 0) & 1) == 0)
              {
                LOBYTE(v86) = a10;
                sub_183907A64(a1, a2, a3, v97, v72, a6, a7, a8, a9, v86);
              }

              ++v46;
              v33 = *(a3 + 32);
              v70 += 72;
            }

            while (v46 < *(v33 + 40 * a5));
          }
        }

LABEL_27:
        v29 = v90 + 1;
        v28 = *(a2 + 32);
        v11 = v88;
      }

      while (*(v28 + 40 * v88) > (v90 + 1));
    }

    v73 = *v87;
    if (*v87)
    {
      v74 = v87;
      do
      {
        v75 = v73[4];
        v18 = v75 == v11;
        v76 = v75 < v11;
        if (v18)
        {
          v76 = v73[5] < a5;
        }

        v77 = !v76;
        v78 = v76;
        if (v77)
        {
          v74 = v73;
        }

        v73 = v73[v78];
      }

      while (v73);
      if (v74 == v87)
      {
        goto LABEL_134;
      }

      v79 = v74[4];
      v18 = v79 == v11;
      v80 = v79 <= v11;
      if (v18)
      {
        v80 = v74[5] <= a5;
      }

      if (!v80)
      {
LABEL_134:
        v81 = -1;
        v82 = *(a8 + 8);
        if (v82)
        {
          goto LABEL_139;
        }
      }

      else
      {
        v81 = v74[6];
        v82 = *(a8 + 8);
        if (v82)
        {
          goto LABEL_139;
        }
      }

LABEL_142:
      operator new();
    }

    v81 = -1;
    v82 = *(a8 + 8);
    if (!v82)
    {
      goto LABEL_142;
    }

    while (1)
    {
LABEL_139:
      while (1)
      {
        v83 = v82;
        v84 = v82[4];
        if (v81 >= v84)
        {
          break;
        }

        v82 = *v83;
        if (!*v83)
        {
          goto LABEL_142;
        }
      }

      if (v84 >= v81)
      {
        break;
      }

      v82 = v83[1];
      if (!v82)
      {
        goto LABEL_142;
      }
    }
  }
}

void sub_18390883C(_Unwind_Exception *a1)
{
  sub_18368D56C(v1 - 136, *(v1 - 128));
  sub_18368D56C(v1 - 112, *(v1 - 104));
  _Unwind_Resume(a1);
}

void sub_1839088AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, unint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v15 = a8;
  v138 = *MEMORY[0x1E69E9840];
  v16 = a6 == a10 || a5 == a10;
  v17 = v16;
  v118 = v17;
  v18 = *(a12 + 8);
  if (!v18)
  {
    goto LABEL_31;
  }

  v19 = (a12 + 8);
  do
  {
    v20 = v18[4];
    v16 = v20 == a8;
    v21 = v20 < a8;
    if (v16)
    {
      v21 = v18[5] < a10;
    }

    v22 = !v21;
    v23 = v21;
    if (v22)
    {
      v19 = v18;
    }

    v18 = v18[v23];
  }

  while (v18);
  if (v19 == (a12 + 8))
  {
    goto LABEL_31;
  }

  v24 = v19[4];
  v16 = v24 == a8;
  v25 = v24 <= a8;
  if (v16)
  {
    v25 = v19[5] <= a10;
  }

  if (!v25)
  {
    goto LABEL_31;
  }

  v26 = v19[6];
  if (v26 == -1)
  {
    goto LABEL_31;
  }

  v27 = *(a14 + 8);
  if (!v27)
  {
    goto LABEL_31;
  }

  v28 = a14 + 8;
  do
  {
    v29 = *(v27 + 32);
    v30 = v29 >= v26;
    v31 = v29 < v26;
    if (v30)
    {
      v28 = v27;
    }

    v27 = *(v27 + 8 * v31);
  }

  while (v27);
  if (v28 == a14 + 8 || v26 < *(v28 + 32))
  {
LABEL_31:
    v112 = (a12 + 8);
    if (a11)
    {
      v32 = a5;
    }

    else
    {
      v32 = a10;
    }

    v135 = *(a12 + 16);
    v113 = v32;
    v33 = sub_1839096BC(a12, a8, v32, &v135);
    v34 = a2;
    v35 = *(a2 + 32);
    if (*(v35 + 40 * v15))
    {
      v36 = v33;
      v37 = 0;
      v121 = (a7 + 8);
      if (a4)
      {
        v38 = a4 == a3;
      }

      else
      {
        v38 = 1;
      }

      v39 = v38;
      v114 = v39;
      v115 = v15;
      v116 = v33;
      do
      {
        v40 = *(v34 + 80) + 72 * *(v35 + 40 * v15 + 16) + 72 * v37;
        v42 = *(v40 + 8);
        v41 = *(v40 + 16);
        v124 = v40;
        v134 = v41;
        CursorByAdvancingWithCharacters = LMLexiconGetCursorByAdvancingWithCharacters();
        v44 = CursorByAdvancingWithCharacters;
        if (!v118)
        {
          LODWORD(v125) = 0;
          v122 = 0;
          v47 = 0;
          v120 = 0;
          v34 = a2;
          if (CursorByAdvancingWithCharacters)
          {
            goto LABEL_100;
          }

          goto LABEL_46;
        }

        sub_18389D1A4(v41, &v136);
        v125 = sub_1839008B0(a1 + 128, &v136);
        if (v44)
        {
          TokenID = LMLexiconCursorFirstTokenID();
          v46 = *v121;
          if (!*v121)
          {
            goto LABEL_92;
          }
        }

        else
        {
          TokenID = 0;
          v46 = *v121;
          if (!*v121)
          {
            goto LABEL_92;
          }
        }

        if ((v137 & 0x80u) == 0)
        {
          v48 = v137;
        }

        else
        {
          v48 = *(&v136 + 1);
        }

        if ((v137 & 0x80u) == 0)
        {
          v49 = &v136;
        }

        else
        {
          v49 = v136;
        }

        v50 = (a7 + 8);
        do
        {
          v51 = *(v46 + 55);
          if (v51 >= 0)
          {
            v52 = *(v46 + 55);
          }

          else
          {
            v52 = *(v46 + 40);
          }

          if (v51 >= 0)
          {
            v53 = (v46 + 32);
          }

          else
          {
            v53 = *(v46 + 32);
          }

          if (v48 >= v52)
          {
            v54 = v52;
          }

          else
          {
            v54 = v48;
          }

          v55 = memcmp(v53, v49, v54);
          v56 = v52 < v48;
          if (v55)
          {
            v56 = v55 < 0;
          }

          v57 = !v56;
          if (v56)
          {
            v58 = 8;
          }

          else
          {
            v58 = 0;
          }

          if (v57)
          {
            v50 = v46;
          }

          v46 = *(v46 + v58);
        }

        while (v46);
        v36 = v116;
        if (v50 == v121)
        {
          goto LABEL_92;
        }

        v61 = v50[4];
        v60 = v50 + 4;
        v59 = v61;
        v62 = *(v60 + 23);
        if (v62 >= 0)
        {
          v63 = *(v60 + 23);
        }

        else
        {
          v63 = v60[1];
        }

        if (v62 >= 0)
        {
          v64 = v60;
        }

        else
        {
          v64 = v59;
        }

        if (v63 >= v48)
        {
          v65 = v48;
        }

        else
        {
          v65 = v63;
        }

        v66 = memcmp(v49, v64, v65);
        v67 = v48 < v63;
        if (v66)
        {
          v67 = v66 < 0;
        }

        if (v67)
        {
LABEL_92:
          __p[0] = &v136;
          *(sub_1836897BC(a7, &v136) + 14) = TokenID;
        }

        __p[0] = *(a12 + 16);
        v47 = sub_1839096BC(a12, v42, a5, __p);
        v34 = a2;
        v15 = v115;
        if ((sub_183909998(a1, a2, a12, v36, v42, a5, 1, v125, v124, a15, a13) & 1) == 0)
        {
          LMLexiconGetRootCursor();
          sub_1839088AC(a1, a2, a3, a4);
          if ((v114 & 1) == 0)
          {
            LMLexiconGetRootCursor();
            sub_1839088AC(a1, a2, a4, a4);
          }
        }

        if (v137 < 0)
        {
          operator delete(v136);
          v122 = v41;
          v120 = v36;
          if (v44)
          {
LABEL_100:
            v68 = *(*(v34 + 32) + 40 * v42 + 32);
            HasChildren = LMLexiconCursorHasChildren();
            HasEntries = LMLexiconCursorHasEntries();
            if (HasChildren)
            {
              v71 = LMLexiconCursorHash();
              *&v136 = *(a12 + 16);
              sub_1839096BC(a12, v42, v71, &v136);
              v36 = v116;
              if ((sub_183909998(a1, a2, a12, v116, v42, v71, 0, 0, v124, a15, a13) & 1) == 0)
              {
                sub_1839088AC(a1, a2, a3, a4);
              }
            }

            v72 = HasEntries | v68;
            v34 = a2;
            if (v72)
            {
              LMLexiconGetRootCursor();
              v73 = LMLexiconCursorTraversedLength();
              LOWORD(v136) = 0;
              LMLexiconCursorGetTraversedCharacters();
              sub_18389D354(&v136, v73, __p);
              v74 = sub_1839008B0(a1 + 128, __p);
              v131 = *(a12 + 16);
              v75 = sub_1839096BC(a12, v42, a5, &v131);
              v34 = a2;
              if (!(v120 | v47 | v122 | v125) || v120 != v36 || (v47 == v75 ? (v76 = v122 == v41) : (v76 = 0), v76 ? (v77 = v125 == v74) : (v77 = 0), !v77))
              {
                if (HasEntries)
                {
                  HasEntries = LMLexiconCursorFirstTokenID();
                }

                v78 = LMLexiconCursorTraversedLength();
                LOWORD(v136) = 0;
                LMLexiconCursorGetTraversedCharacters();
                sub_18389D354(&v136, v78, v129);
                v79 = *v121;
                if (!*v121)
                {
                  goto LABEL_154;
                }

                v80 = (v130 & 0x80u) == 0 ? v130 : v129[1];
                v81 = (v130 & 0x80u) == 0 ? v129 : v129[0];
                v82 = (a7 + 8);
                do
                {
                  v83 = *(v79 + 55);
                  if (v83 >= 0)
                  {
                    v84 = *(v79 + 55);
                  }

                  else
                  {
                    v84 = *(v79 + 40);
                  }

                  if (v83 >= 0)
                  {
                    v85 = (v79 + 32);
                  }

                  else
                  {
                    v85 = *(v79 + 32);
                  }

                  if (v80 >= v84)
                  {
                    v86 = v84;
                  }

                  else
                  {
                    v86 = v80;
                  }

                  v87 = memcmp(v85, v81, v86);
                  v88 = v84 < v80;
                  if (v87)
                  {
                    v88 = v87 < 0;
                  }

                  v89 = !v88;
                  if (v88)
                  {
                    v90 = 8;
                  }

                  else
                  {
                    v90 = 0;
                  }

                  if (v89)
                  {
                    v82 = v79;
                  }

                  v79 = *(v79 + v90);
                }

                while (v79);
                v15 = v115;
                if (v82 == v121)
                {
                  goto LABEL_154;
                }

                v93 = v82[4];
                v92 = v82 + 4;
                v91 = v93;
                v94 = *(v92 + 23);
                if (v94 >= 0)
                {
                  v95 = *(v92 + 23);
                }

                else
                {
                  v95 = v92[1];
                }

                if (v94 >= 0)
                {
                  v96 = v92;
                }

                else
                {
                  v96 = v91;
                }

                if (v95 >= v80)
                {
                  v97 = v80;
                }

                else
                {
                  v97 = v95;
                }

                v98 = memcmp(v81, v96, v97);
                v99 = v80 < v95;
                if (v98)
                {
                  v99 = v98 < 0;
                }

                if (v99)
                {
LABEL_154:
                  *&v136 = v129;
                  *(sub_1836897BC(a7, v129) + 14) = HasEntries;
                }

                v34 = a2;
                if ((sub_183909998(a1, a2, a12, v36, v42, a5, 1, v74, v124, a15, a13) & 1) == 0)
                {
                  sub_1839088AC(a1, a2, a3, a4);
                  if ((v114 & 1) == 0)
                  {
                    LMLexiconGetRootCursor();
                    sub_1839088AC(a1, a2, a4, a4);
                  }
                }

                if (v130 < 0)
                {
                  operator delete(v129[0]);
                }
              }

              if (v133 < 0)
              {
                operator delete(__p[0]);
              }
            }
          }
        }

        else
        {
          v122 = v41;
          v120 = v36;
          if (v44)
          {
            goto LABEL_100;
          }
        }

LABEL_46:
        ++v37;
        v35 = *(v34 + 32);
      }

      while (v37 < *(v35 + 40 * v15));
    }

    v100 = *v112;
    if (*v112)
    {
      v101 = (a12 + 8);
      do
      {
        v102 = v100[4];
        v16 = v102 == v15;
        v103 = v102 < v15;
        if (v16)
        {
          v103 = v100[5] < v113;
        }

        v104 = !v103;
        v105 = v103;
        if (v104)
        {
          v101 = v100;
        }

        v100 = v100[v105];
      }

      while (v100);
      if (v101 == v112)
      {
        goto LABEL_175;
      }

      v106 = v101[4];
      v16 = v106 == v15;
      v107 = v106 <= v15;
      if (v16)
      {
        v107 = v113 >= v101[5];
      }

      if (!v107)
      {
LABEL_175:
        v108 = -1;
        v109 = *(a14 + 8);
        if (v109)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v108 = v101[6];
        v109 = *(a14 + 8);
        if (v109)
        {
          goto LABEL_180;
        }
      }

LABEL_183:
      operator new();
    }

    v108 = -1;
    v109 = *(a14 + 8);
    if (!v109)
    {
      goto LABEL_183;
    }

    while (1)
    {
LABEL_180:
      while (1)
      {
        v110 = v109;
        v111 = v109[4];
        if (v108 >= v111)
        {
          break;
        }

        v109 = *v110;
        if (!*v110)
        {
          goto LABEL_183;
        }
      }

      if (v111 >= v108)
      {
        break;
      }

      v109 = v110[1];
      if (!v109)
      {
        goto LABEL_183;
      }
    }
  }
}

void sub_1839092B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *__p, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  if (a53 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_183909340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  v52 = *(a4 + 16);
  v19 = sub_1839096BC(a4, a6, a7, &v52);
  v20 = v19;
  v44 = a2;
  if (*(*(a2 + 32) + 40 * a6 + 32) == 1 && *(*(a3 + 32) + 40 * a7 + 32) == 1)
  {
    v21 = *(a10 + 8);
    if (!v21)
    {
LABEL_16:
      operator new();
    }

    v22 = a10 + 8;
    v23 = *(a10 + 8);
    do
    {
      v24 = *(v23 + 32);
      v25 = v24 >= v19;
      v26 = v24 < v19;
      if (v25)
      {
        v22 = v23;
      }

      v23 = *(v23 + 8 * v26);
    }

    while (v23);
    if (v22 == a10 + 8 || v19 < *(v22 + 32))
    {
      while (1)
      {
        while (1)
        {
          v27 = v21;
          v28 = v21[4];
          if (v19 >= v28)
          {
            break;
          }

          v21 = *v27;
          if (!*v27)
          {
            goto LABEL_16;
          }
        }

        if (v28 >= v19)
        {
          break;
        }

        v21 = v27[1];
        if (!v21)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v47[0] = a5;
  v47[1] = v19;
  v29 = *(a8 + 16);
  v30 = *(a8 + 48);
  v31 = *(a8 + 56);
  v47[2] = v29;
  v50 = v30;
  v51 = v31;
  if (a12)
  {
    v32 = *(a8 + 24);
    v33 = v44;
    if (*(v44 + 176) == 1)
    {
      if (v32)
      {
        sub_18389D1A4(v32, __p);
LABEL_30:
        v39 = sub_1839008B0(a1 + 128, __p);
        v48 = v39;
        if (SHIBYTE(v46) < 0)
        {
          operator delete(__p[0]);
        }

        v40 = *(a8 + 32);
        goto LABEL_38;
      }

      v35 = *(v44 + 128);
      if (*(v35 + 23) < 0)
      {
LABEL_29:
        sub_183688F34(__p, *v35, *(v35 + 8));
        goto LABEL_30;
      }
    }

    else
    {
      v35 = *(v44 + 128) + 24 * v32;
      if (*(v35 + 23) < 0)
      {
        goto LABEL_29;
      }
    }

    v36 = *v35;
    v46 = *(v35 + 16);
    *__p = v36;
    goto LABEL_30;
  }

  v34 = *(a9 + 24);
  if (*(a3 + 176) != 1)
  {
    v37 = *(a3 + 128) + 24 * v34;
    if (*(v37 + 23) < 0)
    {
LABEL_34:
      sub_183688F34(__p, *v37, *(v37 + 8));
      goto LABEL_35;
    }

LABEL_27:
    v38 = *v37;
    v46 = *(v37 + 16);
    *__p = v38;
    goto LABEL_35;
  }

  if (!v34)
  {
    v37 = *(a3 + 128);
    if (*(v37 + 23) < 0)
    {
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  sub_18389D1A4(v34, __p);
LABEL_35:
  v39 = sub_1839008B0(a1 + 128, __p);
  v48 = v39;
  if (SHIBYTE(v46) < 0)
  {
    operator delete(__p[0]);
  }

  v40 = *(a9 + 32) + *(a8 + 32);
  v33 = v44;
LABEL_38:
  v49 = v40;
  __p[0] = __PAIR64__(v20, a5);
  __p[1] = __PAIR64__(v39, v29);
  LODWORD(v46) = 0;
  if ((a1 + 216) == sub_18390984C(a1 + 208, __p))
  {
    v41 = *(a11 + 8);
    if (v41 >= *(a11 + 16))
    {
      v42 = sub_1836E1A24(a11, v47);
    }

    else
    {
      *v41 = a5;
      *(v41 + 8) = v20;
      *(v41 + 16) = v29;
      *(v41 + 24) = v39;
      *(v41 + 32) = v40;
      v42 = v41 + 72;
      *(v41 + 48) = v30;
      *(v41 + 56) = v31;
    }

    *(a11 + 8) = v42;
    sub_183917CF8(a1 + 208, __p);
  }

  return *(*(v33 + 32) + 40 * a6 + 32);
}

void sub_18390969C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1839096BC(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_26:
    operator new();
  }

  v5 = (a1 + 8);
  v6 = *(a1 + 8);
  do
  {
    v7 = v6[4];
    v9 = v7 == a2;
    v8 = v7 < a2;
    if (v9)
    {
      v8 = v6[5] < a3;
    }

    v9 = !v8;
    v10 = v8;
    if (v9)
    {
      v5 = v6;
    }

    v6 = v6[v10];
  }

  while (v6);
  if (v5 == (a1 + 8))
  {
    goto LABEL_17;
  }

  v11 = v5[4];
  v9 = v11 == a2;
  v12 = v11 <= a2;
  if (v9)
  {
    v12 = v5[5] <= a3;
  }

  if (v12)
  {
    return v5[6];
  }

LABEL_17:
  v13 = *a4;
  while (1)
  {
    while (1)
    {
      v14 = v4;
      v15 = v4[4];
      v16 = v14[5];
      v17 = v16 > a3;
      if (v15 != a2)
      {
        v17 = v15 > a2;
      }

      if (!v17)
      {
        break;
      }

      v4 = *v14;
      if (!*v14)
      {
        goto LABEL_26;
      }
    }

    v18 = v16 < a3;
    v9 = v15 == a2;
    v19 = v15 < a2;
    if (v9)
    {
      v19 = v18;
    }

    if (!v19)
    {
      break;
    }

    v4 = v14[1];
    if (!v4)
    {
      goto LABEL_26;
    }
  }

  *a4 = v13 + 1;
  return v13;
}

_DWORD *sub_18390984C(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = v2;
  v10 = *a2;
  v9 = a2[1];
  do
  {
    v11 = v3[7];
    v12 = v11 >= v10;
    v13 = v11 > v10;
    if (v12)
    {
      v14 = v13;
    }

    else
    {
      v14 = -1;
    }

    v15 = v3[9];
    v16 = v3[10];
    v12 = v15 >= v6;
    v17 = v15 > v6;
    if (v12)
    {
      v18 = v17;
    }

    else
    {
      v18 = -1;
    }

    v19 = v16 > v5;
    if (v16 < v5)
    {
      v19 = -1;
    }

    if (v14 == -1)
    {
LABEL_3:
      v3 += 2;
      goto LABEL_4;
    }

    if (v14)
    {
      goto LABEL_29;
    }

    v20 = v3[8];
    v12 = v20 >= v9;
    v21 = v20 > v9;
    if (!v12)
    {
      v21 = -1;
    }

    if (v21 == -1)
    {
      goto LABEL_3;
    }

    if (v21)
    {
      goto LABEL_29;
    }

    if (v18 == -1)
    {
      goto LABEL_3;
    }

    if (v18)
    {
      goto LABEL_29;
    }

    if (v19 == -1)
    {
      goto LABEL_3;
    }

    if (v19)
    {
LABEL_29:
      v8 = v3;
    }

    else
    {
      if (v3[11] >= v7)
      {
        v22 = 0;
      }

      else
      {
        v22 = 8;
      }

      if (v3[11] >= v7)
      {
        v8 = v3;
      }

      v3 = (v3 + v22);
    }

LABEL_4:
    v3 = *v3;
  }

  while (v3);
  if (v8 == v2)
  {
    return v2;
  }

  v23 = v8[7];
  v12 = v10 >= v23;
  v24 = v10 > v23;
  if (!v12)
  {
    v24 = -1;
  }

  v25 = v8[9];
  v26 = v8[10];
  v12 = v6 >= v25;
  v27 = v6 > v25;
  if (!v12)
  {
    v27 = -1;
  }

  v12 = v5 >= v26;
  v28 = v5 > v26;
  if (!v12)
  {
    v28 = -1;
  }

  if (v24 == -1)
  {
    return v2;
  }

  if (!v24)
  {
    v29 = v8[8];
    v12 = v9 >= v29;
    v30 = v9 > v29;
    if (!v12)
    {
      v30 = -1;
    }

    if (v30 == -1 || !v30 && (v27 == -1 || !v27 && (v28 == -1 || !v28 && v7 < v8[11])))
    {
      return v2;
    }
  }

  return v8;
}

uint64_t sub_183909998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, int a7, uint64_t a8, void *a9, void *a10, uint64_t a11)
{
  v38 = *(a3 + 16);
  v17 = sub_1839096BC(a3, a5, a6, &v38);
  v18 = v17;
  v19 = *(*(a2 + 32) + 40 * a5 + 32) != 1 || a7 == 0;
  v35 = a2;
  if (!v19)
  {
    if (a10[2])
    {
      v18 = *(*a10 + 32);
    }

    else
    {
      v20 = a10[1];
      if (!v20)
      {
LABEL_20:
        operator new();
      }

      v21 = a10 + 1;
      v22 = a10[1];
      do
      {
        v23 = v22[4];
        v24 = v23 >= v17;
        v25 = v23 < v17;
        if (v24)
        {
          v21 = v22;
        }

        v22 = v22[v25];
      }

      while (v22);
      if (v21 == a10 + 1 || v17 < v21[4])
      {
        while (1)
        {
          while (1)
          {
            v26 = v20;
            v27 = v20[4];
            if (v17 >= v27)
            {
              break;
            }

            v20 = *v26;
            if (!*v26)
            {
              goto LABEL_20;
            }
          }

          if (v27 >= v17)
          {
            break;
          }

          v20 = v26[1];
          if (!v20)
          {
            goto LABEL_20;
          }
        }
      }
    }
  }

  v37[0] = a4;
  v37[1] = v18;
  v28 = a9[2];
  v29 = a9[6];
  v30 = a9[7];
  v37[6] = v29;
  v37[7] = v30;
  v37[2] = v28;
  v37[3] = a8;
  v31 = a9[4];
  v37[4] = v31;
  v36[0] = a4;
  v36[1] = v18;
  v36[2] = v28;
  v36[3] = a8;
  v36[4] = 0;
  if ((a1 + 216) == sub_18390984C(a1 + 208, v36))
  {
    v32 = *(a11 + 8);
    if (v32 >= *(a11 + 16))
    {
      v33 = sub_1836E1A24(a11, v37);
    }

    else
    {
      *v32 = a4;
      v32[1] = v18;
      v32[2] = v28;
      v32[3] = a8;
      v32[4] = v31;
      v33 = (v32 + 9);
      v32[6] = v29;
      v32[7] = v30;
    }

    *(a11 + 8) = v33;
    sub_183917CF8(a1 + 208, v36);
  }

  return *(*(v35 + 32) + 40 * a5 + 32);
}

void *sub_183909BC0(void *a1, char *__s, char a3)
{
  v173 = *MEMORY[0x1E69E9840];
  v6 = strlen(__s);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_183688FF0();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
  }

  *(a1 + v7) = 0;
  v8 = a1;
  a1[8] = 0;
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  v149 = a1 + 7;
  a1[9] = 0;
  a1[7] = a1 + 8;
  *(a1 + 5) = 0u;
  v150 = (a1 + 10);
  v151 = a1 + 8;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  sub_183900B90(a1 + 16);
  a1[24] = 0;
  a1[23] = a1 + 24;
  *(a1 + 176) = a3;
  a1[25] = 0;
  a1[27] = 0;
  a1[26] = a1 + 27;
  a1[29] = 0;
  a1[30] = 0;
  a1[28] = 0;
  v9 = *(a1 + 23);
  if ((v9 & 0x8000000000000000) != 0)
  {
    v10 = a1[1];
    if (v10 < 4)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v10 = *(a1 + 23);
    if (v9 < 4)
    {
      goto LABEL_36;
    }
  }

  v11 = v10 - 3;
  if ((v9 & 0x80000000) != 0)
  {
    if (*(*a1 + v11) != 102)
    {
      goto LABEL_36;
    }
  }

  else if (*(a1 + v11) != 102)
  {
    goto LABEL_36;
  }

  v12 = v10 - 2;
  if ((v9 & 0x80000000) != 0)
  {
    if (*(*a1 + v12) != 115)
    {
      goto LABEL_36;
    }

    goto LABEL_19;
  }

  if (*(a1 + v12) == 115)
  {
LABEL_19:
    v13 = v10 - 1;
    if ((v9 & 0x80000000) != 0)
    {
      if (*(*a1 + v13) != 116)
      {
        goto LABEL_36;
      }
    }

    else if (*(a1 + v13) != 116)
    {
      goto LABEL_36;
    }

    v14 = a1;
    if ((v9 & 0x80000000) != 0)
    {
      v14 = *a1;
    }

    v15 = fopen(v14, "rt");
    if (!v15)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::operator+<char>();
      v137 = std::string::append(&__ptr, ")");
      v138 = *&v137->__r_.__value_.__l.__data_;
      v158 = v137->__r_.__value_.__r.__words[2];
      *v157 = v138;
      v137->__r_.__value_.__l.__size_ = 0;
      v137->__r_.__value_.__r.__words[2] = 0;
      v137->__r_.__value_.__r.__words[0] = 0;
      MEMORY[0x1865E5C90](exception, v157);
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    fgets(&buf, 2048, v15);
    if (ferror(v15))
    {
LABEL_25:
      v16 = v8[10];
      v17 = v8[11];
      v18 = 126 - 2 * __clz(0x8E38E38E38E38E39 * ((v17 - v16) >> 3));
      v157[0] = sub_183901900;
      if (v17 == v16)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      sub_183916950(v16, v17, v157, v19, 1);
      v20 = v8[10];
      for (i = v8[11]; v20 != i; v20 += 72)
      {
        v157[0] = v20;
        sub_183915A44((v151 + 5), v157);
      }

      v22 = v8[13];
      v23 = v8[14];
      v24 = 126 - 2 * __clz((v23->i64 - v22) >> 3);
      v157[0] = sub_18390194C;
      if (v23 == v22)
      {
        v25 = 0;
      }

      else
      {
        v25 = v24;
      }

      sub_1836E2510(v22, v23, v157, v25, 1);
      v157[1] = 0;
      v158 = 0;
      v157[0] = &v157[1];
      if (v8[10] != v8[11])
      {
        operator new();
      }

      v103 = v8 + 5;
      v104 = v8[4];
      if (0xCCCCCCCCCCCCCCCDLL * ((v8[5] - v104) >> 3))
      {
        *v103 = v104;
      }

      v105 = v8[10];
      v106 = v8[11];
      if (v105 != v106)
      {
        v107 = v8[10];
        do
        {
          ++*(v104 + 40 * *v107);
          ++*(v104 + 40 * v107[1] + 8);
          v107 += 9;
        }

        while (v107 != v106);
      }

      v108 = *v149;
      if (*v149 != v151)
      {
        do
        {
          *(v104 + 40 * v108[4] + 32) = 1;
          v109 = v108[1];
          if (v109)
          {
            do
            {
              v110 = v109;
              v109 = *v109;
            }

            while (v109);
          }

          else
          {
            do
            {
              v110 = v108[2];
              v111 = *v110 == v108;
              v108 = v110;
            }

            while (!v111);
          }

          v108 = v110;
        }

        while (v110 != v151);
      }

      v112 = *v105;
      *(v104 + 40 * *v105 + 16) = 0;
      if (*v103 == v104)
      {
        *(v104 + 24) = 0;
      }

      else
      {
        v113 = 0;
        v114 = 0xCCCCCCCCCCCCCCCDLL * ((*v103 - v104) >> 3);
        if (v114 <= 1)
        {
          v114 = 1;
        }

        v115 = (v104 + 32);
        do
        {
          *(v115 - 2) = v112;
          v116 = *(v115 - 4);
          if (!v116 && (*v115 & 1) == 0)
          {
            v117 = __cxa_allocate_exception(0x10uLL);
            sub_18389C548(v113, &v152);
            v118 = std::string::insert(&v152, 0, "Node[");
            v119 = *&v118->__r_.__value_.__l.__data_;
            v153.__r_.__value_.__r.__words[2] = v118->__r_.__value_.__r.__words[2];
            *&v153.__r_.__value_.__l.__data_ = v119;
            v118->__r_.__value_.__l.__size_ = 0;
            v118->__r_.__value_.__r.__words[2] = 0;
            v118->__r_.__value_.__r.__words[0] = 0;
            v120 = std::string::append(&v153, "]");
            v121 = *&v120->__r_.__value_.__l.__data_;
            v154.__r_.__value_.__r.__words[2] = v120->__r_.__value_.__r.__words[2];
            *&v154.__r_.__value_.__l.__data_ = v121;
            v120->__r_.__value_.__l.__size_ = 0;
            v120->__r_.__value_.__r.__words[2] = 0;
            v120->__r_.__value_.__r.__words[0] = 0;
            v122 = std::string::append(&v154, "has out degree zero but is not marked as a final node");
            v123 = *&v122->__r_.__value_.__l.__data_;
            v156 = v122->__r_.__value_.__r.__words[2];
            __dst = v123;
            v122->__r_.__value_.__l.__size_ = 0;
            v122->__r_.__value_.__r.__words[2] = 0;
            v122->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x1865E5C60](v117, &__dst);
            __cxa_throw(v117, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
          }

          v112 += v116;
          ++v113;
          v115 += 40;
        }

        while (v114 != v113);
        v124 = 0;
        v125 = 0;
        *(v104 + 24) = 0;
        v126 = (v104 + 24);
        do
        {
          *v126 = v125;
          v127 = *(v126 - 2);
          if (!v127 && v124 != v8[3])
          {
            v128 = __cxa_allocate_exception(0x10uLL);
            sub_18389C548(v124, &v152);
            v129 = std::string::insert(&v152, 0, "Node[");
            v130 = *&v129->__r_.__value_.__l.__data_;
            v153.__r_.__value_.__r.__words[2] = v129->__r_.__value_.__r.__words[2];
            *&v153.__r_.__value_.__l.__data_ = v130;
            v129->__r_.__value_.__l.__size_ = 0;
            v129->__r_.__value_.__r.__words[2] = 0;
            v129->__r_.__value_.__r.__words[0] = 0;
            v131 = std::string::append(&v153, "]");
            v132 = *&v131->__r_.__value_.__l.__data_;
            v154.__r_.__value_.__r.__words[2] = v131->__r_.__value_.__r.__words[2];
            *&v154.__r_.__value_.__l.__data_ = v132;
            v131->__r_.__value_.__l.__size_ = 0;
            v131->__r_.__value_.__r.__words[2] = 0;
            v131->__r_.__value_.__r.__words[0] = 0;
            v133 = std::string::append(&v154, "has in degree zero but is not marked as an initial node");
            v134 = *&v133->__r_.__value_.__l.__data_;
            v156 = v133->__r_.__value_.__r.__words[2];
            __dst = v134;
            v133->__r_.__value_.__l.__size_ = 0;
            v133->__r_.__value_.__r.__words[2] = 0;
            v133->__r_.__value_.__r.__words[0] = 0;
            MEMORY[0x1865E5C60](v128, &__dst);
            __cxa_throw(v128, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
          }

          v126 += 5;
          v125 += v127;
          ++v124;
        }

        while (v114 != v124);
      }

      fclose(v15);
      sub_18368D56C(v157, v157[1]);
      return v8;
    }

    v147 = *(MEMORY[0x1E69E54D8] + 24);
    v148 = *(MEMORY[0x1E69E54D8] + 16);
    v145 = *(MEMORY[0x1E69E54D8] + 40);
    v146 = *(MEMORY[0x1E69E54D8] + 32);
    v143 = *(MEMORY[0x1E69E54D8] + 8);
    v144 = *(MEMORY[0x1E69E54D8] + 48);
    v141 = *MEMORY[0x1E69E54D8];
    v142 = v15;
    v139 = *(MEMORY[0x1E69E54D8] + 72);
    v140 = *(MEMORY[0x1E69E54D8] + 64);
    while (1)
    {
      if (feof(v15))
      {
        goto LABEL_25;
      }

      LOBYTE(buf) = 0;
      if (!fgets(&buf, 2048, v15) || ferror(v15))
      {
        goto LABEL_25;
      }

      v61 = strlen(&buf);
      if (v61 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_183688FF0();
      }

      v62 = v61;
      if (v61 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v156) = v61;
      if (v61)
      {
        memcpy(&__dst, &buf, v61);
      }

      *(&__dst + v62) = 0;
      v165[6] = 0;
      v63 = MEMORY[0x1E69E5560] + 104;
      v165[0] = MEMORY[0x1E69E5560] + 104;
      v64 = MEMORY[0x1E69E5560] + 64;
      v158 = MEMORY[0x1E69E5560] + 64;
      v157[0] = v148;
      *(v157 + *(v148 - 3)) = v147;
      v157[1] = 0;
      v65 = (v157 + *(v157[0] - 3));
      std::ios_base::init(v65, &v159);
      v66 = (MEMORY[0x1E69E5560] + 24);
      v65[1].__vftable = 0;
      v65[1].__fmtflags_ = -1;
      v158 = v146;
      *(&v158 + *(v146 - 24)) = v145;
      v157[0] = v143;
      *(v157 + *(v143 - 3)) = v144;
      v165[0] = v63;
      v157[0] = v66;
      v67 = MEMORY[0x1E69E5538] + 16;
      v158 = v64;
      v159 = MEMORY[0x1E69E5538] + 16;
      MEMORY[0x1865E5E10](&v160);
      memset(v161, 0, sizeof(v161));
      v68 = MEMORY[0x1E69E5548] + 16;
      v159 = MEMORY[0x1E69E5548] + 16;
      __p = 0u;
      v163 = 0u;
      v164 = 24;
      std::stringbuf::str();
      if (SHIBYTE(v156) < 0)
      {
        operator delete(__dst);
      }

      MEMORY[0x1865E5D30](&__dst, v157, 0);
      if (__dst != 1)
      {
        v71 = 0;
        goto LABEL_120;
      }

      v69 = *&v161[*(v157[0] - 3)];
      v70 = v69[3];
      if (v70 == v69[4])
      {
        v72 = (*(*v69 + 80))(v69);
        v71 = v72;
        if (v72 == -1)
        {
          v71 = 0;
          v73 = 6;
          goto LABEL_119;
        }
      }

      else
      {
        v69[3] = v70 + 1;
        v71 = *v70;
      }

      v73 = 0;
LABEL_119:
      std::ios_base::clear((v157 + *(v157[0] - 3)), *(&v160.__locale_ + *(v157[0] - 3)) | v73);
LABEL_120:
      if ((*(&v160.__locale_ + *(v157[0] - 3)) & 5) != 0)
      {
        v135 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v135, "Invalid empty FST line entry");
        __cxa_throw(v135, MEMORY[0x1E69E53F8], MEMORY[0x1E69E5260]);
      }

      if (v71 == 70)
      {
        *&__dst = 0;
        MEMORY[0x1865E5D50](v157, &__dst);
        v74 = *v151;
        if (!*v151)
        {
LABEL_130:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v75 = v74;
            v76 = v74[4];
            if (__dst >= v76)
            {
              break;
            }

            v74 = *v75;
            if (!*v75)
            {
              goto LABEL_130;
            }
          }

          if (v76 >= __dst)
          {
            break;
          }

          v74 = v75[1];
          if (!v74)
          {
            goto LABEL_130;
          }
        }
      }

      else
      {
        if (v71 != 73)
        {
          v154.__r_.__value_.__r.__words[0] = 0;
          MEMORY[0x1865E5D50](v157, &__ptr);
          MEMORY[0x1865E5D50](v157, &__ptr + 8);
          __dst = 0uLL;
          v156 = 0;
          sub_18389C208(v157, &__dst);
          std::ios_base::clear((v157 + *(v157[0] - 3)), 0);
          v78 = HIBYTE(v156);
          p_dst = &__dst;
          if (v156 < 0)
          {
            v78 = *(&__dst + 1);
            p_dst = __dst;
          }

          if (v78)
          {
            v80 = *p_dst == 45;
            if (*p_dst != 45)
            {
              v82 = 1;
              goto LABEL_142;
            }

            if (v78 == 1)
            {
              v81 = 1;
              LODWORD(v80) = 1;
            }

            else
            {
              v82 = 2;
LABEL_142:
              if (*(p_dst + v80) == 48 && (*(p_dst + v82) | 0x20) == 0x78)
              {
                v81 = 2;
                if (*p_dst == 45)
                {
                  v81 = 3;
                }
              }

              else
              {
                v81 = *p_dst == 45;
              }
            }
          }

          else
          {
            LODWORD(v80) = 0;
            v81 = 0;
          }

          if (v81 >= v78)
          {
            v83 = 0;
LABEL_167:
            if (v80)
            {
              v87 = -v83;
            }

            else
            {
              v87 = v83;
            }
          }

          else
          {
            v83 = 0;
            do
            {
              v84 = *(p_dst + v81);
              if ((v84 - 48) > 9)
              {
                if ((v84 - 97) > 5)
                {
                  if ((v84 - 65) > 5)
                  {
                    goto LABEL_167;
                  }

                  v85 = v84 + 16 * v83 - 55;
                }

                else
                {
                  v85 = v84 + 16 * v83 - 87;
                }
              }

              else
              {
                v85 = (v84 - 48) | (16 * v83);
              }

              ++v81;
              v86 = v85 < v83;
              if (v81 >= v78)
              {
                break;
              }

              v83 = v85;
            }

            while (!v86);
            if (v80)
            {
              v87 = 0x80000000;
            }

            else
            {
              v87 = 0x7FFFFFFF;
            }

            if (v80)
            {
              v88 = -v85;
            }

            else
            {
              v88 = v85;
            }

            if (!v86)
            {
              v87 = v88;
            }
          }

          *&v167 = v87;
          if (SHIBYTE(v156) < 0)
          {
            *__dst = 0;
            *(&__dst + 1) = 0;
          }

          else
          {
            LOBYTE(__dst) = 0;
            HIBYTE(v156) = 0;
          }

          sub_18389C208(v157, &__dst);
          v89 = HIBYTE(v156);
          if (v156 < 0)
          {
            v89 = *(&__dst + 1);
          }

          if (v8[22])
          {
            if (v89)
            {
              v90 = __dst;
              if (v156 >= 0)
              {
                v90 = &__dst;
              }

              v91 = *v90 == 45;
              if (*v90 != 45)
              {
                v93 = 1;
                goto LABEL_187;
              }

              if (v89 == 1)
              {
                v91 = 1;
              }

              else
              {
                v93 = 2;
LABEL_187:
                if (*(v90 + v91) == 48 && (*(v90 + v93) | 0x20) == 0x78)
                {
                  v91 = 2;
                  if (*v90 == 45)
                  {
                    v91 = 3;
                  }
                }
              }

              if (v91 >= v89)
              {
                v94 = 0;
LABEL_210:
                if (*v90 == 45)
                {
                  v98 = -v94;
                }

                else
                {
                  v98 = v94;
                }
              }

              else
              {
                v94 = 0;
                do
                {
                  v95 = *(v90 + v91);
                  if ((v95 - 48) > 9)
                  {
                    if ((v95 - 97) > 5)
                    {
                      if ((v95 - 65) > 5)
                      {
                        goto LABEL_210;
                      }

                      v96 = v95 + 16 * v94 - 55;
                    }

                    else
                    {
                      v96 = v95 + 16 * v94 - 87;
                    }
                  }

                  else
                  {
                    v96 = (v95 - 48) | (16 * v94);
                  }

                  ++v91;
                  v97 = v96 < v94;
                  if (v91 >= v89)
                  {
                    break;
                  }

                  v94 = v96;
                }

                while (!v97);
                if (*v90 == 45)
                {
                  v98 = 0x80000000;
                }

                else
                {
                  v98 = 0x7FFFFFFF;
                }

                if (*v90 == 45)
                {
                  v99 = -v96;
                }

                else
                {
                  v99 = v96;
                }

                if (!v97)
                {
                  v98 = v99;
                }
              }

              v92 = v98;
LABEL_214:
              *(&v167 + 1) = v92;
              MEMORY[0x1865E5D40](v157, &v154);
              v100 = *&v154.__r_.__value_.__l.__data_;
              if ((*(&v160.__locale_ + *(v157[0] - 3)) & 5) != 0)
              {
                v100 = 0.0;
              }

              *&v168 = v100;
              v153.__r_.__value_.__r.__words[0] = 0;
              MEMORY[0x1865E5D50](v157, &v153);
              if ((*(&v160.__locale_ + *(v157[0] - 3)) & 5) != 0)
              {
                v101 = 0;
              }

              else
              {
                v101 = v153.__r_.__value_.__r.__words[0];
              }

              *&v169 = v101;
              if (SHIBYTE(v156) < 0)
              {
                operator delete(__dst);
              }

              v77 = 1;
              goto LABEL_222;
            }
          }

          else if (v89)
          {
            v92 = sub_1839008B0((v151 + 8), &__dst);
            goto LABEL_214;
          }

          v92 = 0;
          goto LABEL_214;
        }

        MEMORY[0x1865E5D50](v157, v8 + 3);
      }

      v77 = 0;
LABEL_222:
      v157[0] = v141;
      *(v157 + *(v141 - 3)) = v140;
      v158 = v139;
      v159 = v68;
      if (SBYTE7(v163) < 0)
      {
        operator delete(__p);
      }

      v159 = v67;
      std::locale::~locale(&v160);
      std::iostream::~basic_iostream();
      MEMORY[0x1865E5E50](v165);
      v15 = v142;
      if (v77)
      {
        v102 = v8[11];
        if (v102 < v8[12])
        {
          *v102 = __ptr;
          *(v102 + 16) = v167;
          *(v102 + 32) = v168;
          *(v102 + 48) = v169;
          *(v102 + 64) = v170;
          v60 = v102 + 72;
        }

        else
        {
          v60 = sub_1836E1A24(v150, &__ptr);
        }

        v8[11] = v60;
      }

      if (ferror(v142))
      {
        goto LABEL_25;
      }
    }
  }

LABEL_36:
  v26 = fopen(__s, "rb");
  v27 = v26;
  if (!v26 || ferror(v26))
  {
    v28 = 0;
    LODWORD(__dst) = 0;
    LODWORD(v154.__r_.__value_.__l.__data_) = 0;
    goto LABEL_39;
  }

  fread(&__ptr, 4uLL, 3uLL, v27);
  v40 = ferror(v27);
  v41 = v40;
  if (__ptr <= 1 && DWORD1(__ptr) < 3)
  {
    LODWORD(__dst) = 0;
    LODWORD(v154.__r_.__value_.__l.__data_) = 0;
    if (!v40)
    {
      fread(&__dst, 4uLL, 1uLL, v27);
      v29 = ferror(v27) != 0;
      v28 = __dst;
LABEL_40:
      v30 = v28;
      v31 = a1[11];
      v32 = a1[10];
      v33 = 0x8E38E38E38E38E39 * ((v31 - v32) >> 3);
      v34 = v30 - v33;
      if (v30 <= v33)
      {
        if (v30 >= v33)
        {
          goto LABEL_58;
        }

        v39 = v32 + 72 * v30;
      }

      else
      {
        v35 = a1[12];
        if (0x8E38E38E38E38E39 * ((v35 - v31) >> 3) < v34)
        {
          if ((v30 & 0x80000000) != 0)
          {
            sub_1836D58DC();
          }

          v36 = 0x8E38E38E38E38E39 * ((v35 - v32) >> 3);
          v37 = 2 * v36;
          if (2 * v36 <= v30)
          {
            v37 = v30;
          }

          if (v36 >= 0x1C71C71C71C71C7)
          {
            v38 = 0x38E38E38E38E38ELL;
          }

          else
          {
            v38 = v37;
          }

          if (v38 <= 0x38E38E38E38E38ELL)
          {
            operator new();
          }

          goto LABEL_257;
        }

        bzero(a1[11], 72 * ((72 * v34 - 72) / 0x48) + 72);
        v39 = v31 + 72 * ((72 * v34 - 72) / 0x48) + 72;
      }

      a1[11] = v39;
LABEL_58:
      v42 = a1[13];
      v43 = a1[14];
      v44 = (v43 - v42) >> 3;
      v45 = v30 - v44;
      if (v30 <= v44)
      {
        if (v30 >= v44)
        {
          goto LABEL_72;
        }

        v50 = v42 + 8 * v30;
      }

      else
      {
        v46 = a1[15];
        if (v45 > (v46 - v43) >> 3)
        {
          if ((v30 & 0x80000000) != 0)
          {
            sub_1836D58DC();
          }

          v47 = v46 - v42;
          v48 = v47 >> 2;
          if (v47 >> 2 <= v30)
          {
            v48 = v30;
          }

          if (v47 >= 0x7FFFFFFFFFFFFFF8)
          {
            v49 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v48;
          }

          if (!(v49 >> 61))
          {
            operator new();
          }

LABEL_257:
          sub_183688F00();
        }

        bzero(a1[14], 8 * v45);
        v50 = v43 + 8 * v45;
      }

      a1[14] = v50;
LABEL_72:
      if (v27)
      {
        v51 = v29;
      }

      else
      {
        v51 = 1;
      }

      if ((v51 & 1) != 0 || ferror(v27))
      {
        data = 0;
        v53 = 1;
      }

      else
      {
        fread(&v154, 4uLL, 1uLL, v27);
        v53 = ferror(v27) != 0;
        data = v154.__r_.__value_.__l.__data_;
      }

      v54 = data;
      v55 = a1[4];
      v56 = 0xCCCCCCCCCCCCCCCDLL * ((a1[5] - v55) >> 3);
      if (v54 <= v56)
      {
        if (v54 < v56)
        {
          a1[5] = v55 + 40 * v54;
        }
      }

      else
      {
        sub_183723D20((a1 + 4), v54 - v56);
      }

      LODWORD(v153.__r_.__value_.__l.__data_) = 0;
      if (v27)
      {
        v57 = v53;
      }

      else
      {
        v57 = 1;
      }

      if ((v57 & 1) != 0 || ferror(v27))
      {
        operator new[]();
      }

      fread(&v153, 4uLL, 1uLL, v27);
      ferror(v27);
      operator new[]();
    }

    v28 = 0;
LABEL_39:
    v29 = 1;
    goto LABEL_40;
  }

  if (qword_1EA84DC48 != -1)
  {
    dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
  }

  v59 = qword_1EA84DC50[0];
  if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
  {
    buf = 136315138;
    buf_4 = __s;
    _os_log_impl(&dword_18366B000, v59, OS_LOG_TYPE_ERROR, "Unsupported Network Version %s", &buf, 0xCu);
  }

  if (!v41)
  {
    fclose(v27);
  }

  return v8;
}

void sub_18390BBE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale *a23, uint64_t a24, uint64_t a25, uint64_t a26, void **a27, uint64_t a28, void **a29, void **a30, uint64_t a31, void **a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49)
{
  __cxa_end_catch();
  sub_183900C90(&a49);
  sub_18368D56C(a26, *a27);
  sub_1836DD2D8(a28, *a29);
  sub_18390BF1C(a33 + 64);
  v51 = *(a33 + 40);
  if (v51)
  {
    *(v49 + 112) = v51;
    operator delete(v51);
  }

  v52 = *a32;
  if (*a32)
  {
    *(v49 + 88) = v52;
    operator delete(v52);
  }

  sub_18368D56C(a31, *a33);
  v53 = *a30;
  if (*a30)
  {
    *(v49 + 40) = v53;
    operator delete(v53);
  }

  if (*(v49 + 23) < 0)
  {
    operator delete(*v49);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_18390BF1C(uint64_t a1)
{
  sub_18368922C(a1 + 24, *(a1 + 32));
  v2 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 8);
    v4 = *a1;
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
      v4 = *a1;
    }

    *(a1 + 8) = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_18390BF9C(uint64_t a1)
{
  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  sub_183900B90((a1 + 128));
  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 216) = 0;
  *(a1 + 208) = a1 + 216;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0;
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  if (v2 >= v3)
  {
    v5 = *(a1 + 32);
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - v5) >> 3) + 1;
    if (v6 > 0x666666666666666)
    {
      sub_1836D58DC();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v5) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x333333333333333)
    {
      v8 = 0x666666666666666;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x666666666666666)
      {
        operator new();
      }

      sub_183688F00();
    }

    v9 = 8 * ((v2 - v5) >> 3);
    *(v9 + 32) = 0;
    *v9 = 0u;
    *(v9 + 16) = 0u;
    v4 = v9 + 40;
    v10 = (v9 - (v2 - v5));
    memcpy(v10, v5, v2 - v5);
    *(a1 + 32) = v10;
    *(a1 + 40) = v4;
    *(a1 + 48) = 0;
    if (v5)
    {
      operator delete(v5);
    }
  }

  else
  {
    *(v2 + 32) = 0;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    v4 = v2 + 40;
  }

  *(a1 + 40) = v4;
  *(*(a1 + 32) + 32) = 1;
  return a1;
}

void sub_18390C154(_Unwind_Exception *a1)
{
  v5 = *(v1 + 104);
  if (v5)
  {
    *(v1 + 112) = v5;
    operator delete(v5);
    v6 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_18368D56C(v2, *(v1 + 64));
      v7 = *(v1 + 32);
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v6 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v1 + 88) = v6;
  operator delete(v6);
  sub_18368D56C(v2, *(v1 + 64));
  v7 = *(v1 + 32);
  if (!v7)
  {
LABEL_4:
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  *(v1 + 40) = v7;
  operator delete(v7);
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(*v1);
  _Unwind_Resume(a1);
}

uint64_t sub_18390C484(uint64_t a1)
{
  v2 = *(a1 + 232);
  if (v2)
  {
    free(v2);
    *(a1 + 232) = 0;
  }

  sub_18368D56C(a1 + 208, *(a1 + 216));
  sub_1836DD2D8(a1 + 184, *(a1 + 192));
  sub_18368922C(a1 + 152, *(a1 + 160));
  v3 = *(a1 + 128);
  if (v3)
  {
    v4 = *(a1 + 136);
    v5 = *(a1 + 128);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v3);
      v5 = *(a1 + 128);
    }

    *(a1 + 136) = v3;
    operator delete(v5);
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    *(a1 + 112) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 80);
  if (v8)
  {
    *(a1 + 88) = v8;
    operator delete(v8);
  }

  sub_18368D56C(a1 + 56, *(a1 + 64));
  v9 = *(a1 + 32);
  if (v9)
  {
    *(a1 + 40) = v9;
    operator delete(v9);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_18390C58C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v7 = *a5;
  if (*(*a5 + 4 * a2) > 0)
  {
    return;
  }

  v9 = a2;
  v58 = 0u;
  v59 = 0u;
  *__p = 0u;
  v10 = (*a3 + 24 * a2);
  v11 = *v10;
  v49 = v10 + 1;
  if (*v10 == v10 + 1)
  {
    v43 = 0;
    v42 = 0;
    *(&v59 + 1) = 0;
    v44 = 0;
    goto LABEL_62;
  }

  v12 = a1;
  if (!*(*(a1 + 32) + 40 * a2))
  {
    v43 = 0;
    v42 = 0;
    *(v7 + 4 * a2) = 1;
    *(&v59 + 1) = 0;
    v44 = 0;
    goto LABEL_62;
  }

  v13 = a5;
  v48 = 40 * a2;
  v54 = 1;
  do
  {
    v50 = v11;
    v14 = *(v12 + 32);
    if (*(v14 + v48))
    {
      v15 = 0;
      do
      {
        while (1)
        {
          v16 = *(v12 + 80) + 72 * *(v14 + 40 * v9 + 16) + 72 * v15;
          v17 = *(v16 + 8);
          if (*(v14 + 40 * v17 + 32))
          {
            v18 = v17 & 0xFFFFF;
          }

          else
          {
            v18 = v17 & 0xFFFFF | ((*(v16 + 24) & 0xFFFFFLL) << 20);
          }

          v19 = *(*a3 + 24 * v17 + 8);
          if (!v19)
          {
LABEL_18:
            operator new();
          }

          while (1)
          {
            while (1)
            {
              v20 = v19;
              v21 = v19[4];
              if (v18 >= v21)
              {
                break;
              }

              v19 = *v20;
              if (!*v20)
              {
                goto LABEL_18;
              }
            }

            if (v21 >= v18)
            {
              break;
            }

            v19 = v20[1];
            if (!v19)
            {
              goto LABEL_18;
            }
          }

          v22 = *(*a7 + 4 * v17);
          if (v54)
          {
            *(*a7 + 4 * v17) = ++v22;
          }

          v14 = *(a1 + 32);
          if (*(v14 + 40 * v17 + 8) == v22)
          {
            break;
          }

          v12 = a1;
          ++v15;
          v9 = a2;
          if (v15 >= *(v14 + 40 * a2))
          {
            goto LABEL_27;
          }
        }

        v23 = v58;
        v24 = __p[1];
        v25 = ((v58 - __p[1]) << 6) - 1;
        *(*a6 + 4 * v17) = 1;
        if (v23 == v24)
        {
          v25 = 0;
        }

        v26 = *(&v59 + 1) + v59;
        v12 = a1;
        if (v25 == *(&v59 + 1) + v59)
        {
          sub_1837236B0(__p);
          v24 = __p[1];
          v26 = *(&v59 + 1) + v59;
          v14 = *(a1 + 32);
        }

        *(*&v24[(v26 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v26 & 0x1FF)) = v17;
        ++*(&v59 + 1);
        ++v15;
        v9 = a2;
      }

      while (v15 < *(v14 + 40 * a2));
LABEL_27:
      v27 = *(&v59 + 1);
      v13 = a5;
      *(*a5 + 4 * v9) = 1;
      if (!v27)
      {
LABEL_28:
        v28 = v50;
        v29 = v50[1];
        if (!v29)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }

      while (1)
      {
        v30 = *(*(__p[1] + (((v59 + v27 - 1) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v59 + v27 - 1) & 0x1FF));
        if (v58 == __p[1])
        {
          v31 = 0;
        }

        else
        {
          v31 = ((v58 - __p[1]) << 6) - 1;
        }

        *(&v59 + 1) = v27 - 1;
        if (v31 - (v27 + v59) + 1 >= 0x400)
        {
          operator delete(*(v58 - 8));
          *&v58 = v58 - 8;
        }

        v32 = *(v12 + 32);
        if ((*(v32 + 40 * v30 + 32) & 1) != 0 || *(*a5 + 4 * v30))
        {
          v33 = *(v32 + 40 * v9);
          if (v33)
          {
            goto LABEL_39;
          }

LABEL_30:
          v27 = *(&v59 + 1);
          if (!*(&v59 + 1))
          {
            goto LABEL_28;
          }
        }

        else
        {
          sub_18390C58C(v12, v30, a3, a4, a5, a6, a7);
          v32 = *(v12 + 32);
          v33 = *(v32 + 40 * v9);
          if (!v33)
          {
            goto LABEL_30;
          }

LABEL_39:
          v34 = (*(v12 + 80) + 72 * *(v32 + 40 * v9 + 16) + 8);
          while (1)
          {
            v36 = *v34;
            v34 += 9;
            v35 = v36;
            if ((*(v32 + 40 * v36 + 32) & 1) == 0 && !*(*a5 + 4 * v35) && *(*a6 + 4 * v35) >= 1)
            {
              break;
            }

            if (!--v33)
            {
              goto LABEL_30;
            }
          }

          v37 = __p[1];
          v38 = ((v58 - __p[1]) << 6) - 1;
          if (v58 == __p[1])
          {
            v38 = 0;
          }

          v39 = *(&v59 + 1) + v59;
          if (v38 == *(&v59 + 1) + v59)
          {
            sub_1837236B0(__p);
            v37 = __p[1];
            v39 = *(&v59 + 1) + v59;
          }

          *(*&v37[(v39 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v39 & 0x1FF)) = v35;
          v27 = *(&v59 + 1) + 1;
          *(&v59 + 1) = v27;
          if (!v27)
          {
            goto LABEL_28;
          }
        }
      }
    }

    *(*v13 + 4 * v9) = 1;
    v28 = v11;
    v29 = v11[1];
    if (!v29)
    {
      do
      {
LABEL_55:
        v40 = v28[2];
        v41 = *v40 == v28;
        v28 = v40;
      }

      while (!v41);
      goto LABEL_5;
    }

    do
    {
LABEL_53:
      v40 = v29;
      v29 = *v29;
    }

    while (v29);
LABEL_5:
    v54 = 0;
    v11 = v40;
  }

  while (v40 != v49);
  v42 = __p[1];
  v43 = v58;
  *(&v59 + 1) = 0;
  v44 = (v58 - __p[1]) >> 3;
  if (v44 >= 3)
  {
    do
    {
      operator delete(*v42);
      v43 = v58;
      v42 = (__p[1] + 8);
      __p[1] = v42;
      v44 = (v58 - v42) >> 3;
    }

    while (v44 > 2);
  }

LABEL_62:
  if (v44 == 1)
  {
    v45 = 256;
    goto LABEL_66;
  }

  if (v44 == 2)
  {
    v45 = 512;
LABEL_66:
    *&v59 = v45;
  }

  if (v42 != v43)
  {
    do
    {
      v46 = *v42++;
      operator delete(v46);
    }

    while (v42 != v43);
    if (v58 != __p[1])
    {
      *&v58 = v58 + ((__p[1] - v58 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }
}

void sub_18390CCE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_183685FAC(va);
  _Unwind_Resume(a1);
}

void sub_18390CCF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_183685FAC(va);
  _Unwind_Resume(a1);
}

void sub_18390CD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_183685FAC(va);
  _Unwind_Resume(a1);
}

void sub_18390CD1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_183685FAC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_18390CD30(uint64_t *result)
{
  v1 = result[4];
  v2 = *(result[7] + 32);
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((result[5] - v1) >> 3) - 1;
  if (v2 != v3)
  {
    v4 = result;
    v5 = result[10];
    v6 = result[11] - v5;
    if (v6)
    {
      v7 = 0x8E38E38E38E38E39 * (v6 >> 3);
      if (v7 <= 1)
      {
        v7 = 1;
      }

      v8 = (v5 + 8);
      do
      {
        v9 = *(v8 - 1);
        v10 = v3;
        if (v9 == v2 || (v10 = v2, v9 == v3))
        {
          *(v8 - 1) = v10;
        }

        v11 = v3;
        if (*v8 == v2 || (v11 = v2, *v8 == v3))
        {
          *v8 = v11;
        }

        v8 += 9;
        --v7;
      }

      while (v7);
    }

    v12 = v1 + 40 * v2;
    v13 = v1 + 40 * v3;
    v14 = *v12;
    v15 = *(v12 + 16);
    v16 = *(v13 + 32);
    v17 = *(v13 + 16);
    *v12 = *v13;
    *(v12 + 16) = v17;
    *(v12 + 32) = v16;
    v18 = result + 8;
    result = result[8];
    v19 = v4[4];
    v20 = (v19 + 40 * v3);
    *v20 = v14;
    v20[1] = v15;
    if (!result)
    {
      *(v19 + 40 * v2 + 32) = 0;
      goto LABEL_38;
    }

    v21 = v4 + 8;
    v22 = result;
    do
    {
      v23 = v22[4];
      v24 = v23 >= v2;
      v25 = v23 < v2;
      if (v24)
      {
        v21 = v22;
      }

      v22 = v22[v25];
    }

    while (v22);
    if (v21 == v18 || v21[4] > v2)
    {
      *(v19 + 40 * v2 + 32) = 0;
      goto LABEL_35;
    }

    v26 = v21[1];
    if (v26)
    {
      do
      {
        v27 = v26;
        v26 = *v26;
      }

      while (v26);
    }

    else
    {
      v28 = v21;
      do
      {
        v27 = v28[2];
        v29 = *v27 == v28;
        v28 = v27;
      }

      while (!v29);
    }

    if (v4[7] == v21)
    {
      v4[7] = v27;
    }

    --v4[9];
    sub_1836E13E8(result, v21);
    operator delete(v21);
    result = v4[8];
    v19 = v4[4];
    *(v19 + 40 * v2 + 32) = 0;
    if (!result)
    {
LABEL_38:
      operator new();
    }

    while (1)
    {
LABEL_35:
      while (1)
      {
        v30 = result;
        v31 = result[4];
        if (v31 <= v3)
        {
          break;
        }

        result = *result;
        if (!*v30)
        {
          goto LABEL_38;
        }
      }

      if (v31 >= v3)
      {
        break;
      }

      result = result[1];
      if (!result)
      {
        goto LABEL_38;
      }
    }

    if (0xCCCCCCCCCCCCCCCDLL * ((v4[5] - v19) >> 3) >= v3)
    {
      *(v19 + 40 * v3 + 32) = 1;
    }
  }

  return result;
}

void sub_18390CFE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, char a6)
{
  sub_18390BF9C(v12);
  sub_183907728(v12, a2, a3, a6);
  sub_18390BF9C(v11);
  sub_183901960(v12, v11);
  sub_183902600(v11, a4, a5);
}

void sub_18390D0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  sub_18390C484(&a9);
  sub_18390C484(&a40);
  _Unwind_Resume(a1);
}

void sub_18390D0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v52 = *MEMORY[0x1E69E9840];
  sub_18390BF9C(v29);
  sub_18390BF9C(v28);
  v27[0] = 0;
  v27[1] = 0;
  v26 = v27;
  sub_18390BF9C(&v33);
  if (v35 != v34)
  {
    v35 = v34;
  }

  sub_18368D56C(&v36, v37[0]);
  v37[1] = 0;
  v36 = v37;
  v37[0] = 0;
  v31 = 0;
  __p = 0;
  v32 = 0;
  v50 = 0;
  v51 = 0;
  v49 = &v50;
  sub_18368D56C(&v41, v42);
  v43 = 0;
  v41 = &v42;
  v42 = 0;
  v47 = 0;
  v48 = 0;
  v46 = &v47;
  v45[1] = 0;
  v45[0] = 0;
  v44 = v45;
  RootCursor = LMLexiconGetRootCursor();
  v7 = LMLexiconGetRootCursor();
  v8 = LMLexiconCursorHash();
  v9 = LMLexiconCursorHash();
  sub_1839088AC(&v33, a2, a5, a6, v8, v9, &v26, *(a2 + 24), RootCursor, v8, 0, &v49, &__p, &v46, &v44);
  if (a6)
  {
    sub_1839088AC(&v33, a2, a6, a6, v8, v9, &v26, *(a2 + 24), v7, v9, 1, &v49, &__p, &v46, &v44);
  }

  sub_18368D56C(&v46, v47);
  v47 = 0;
  v48 = 0;
  v46 = &v47;
  sub_18368D56C(&v41, v42);
  v43 = 0;
  v41 = &v42;
  v42 = 0;
  LMLexiconResetCursors();
  v10 = LMLexiconResetCursors();
  v11 = 0xCCCCCCCCCCCCCCCDLL * ((v35 - v34) >> 3);
  if (v51 <= v11)
  {
    if (v51 < v11)
    {
      v35 = v34 + 40 * v51;
    }
  }

  else
  {
    sub_183723D20(&v34, v51 - v11);
  }

  v12 = v44;
  if (v44 != v45)
  {
    do
    {
      v13 = v12[4];
      v14 = v37[0];
      if (!v37[0])
      {
LABEL_18:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v15 = v14;
          v16 = v14[4];
          if (v16 <= v13)
          {
            break;
          }

          v14 = *v15;
          if (!*v15)
          {
            goto LABEL_18;
          }
        }

        if (v16 >= v13)
        {
          break;
        }

        v14 = v15[1];
        if (!v14)
        {
          goto LABEL_18;
        }
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((v35 - v34) >> 3) >= v13)
      {
        *(v34 + 40 * v13 + 32) = 1;
      }

      v17 = v12[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v12[2];
          v19 = *v18 == v12;
          v12 = v18;
        }

        while (!v19);
      }

      v12 = v18;
    }

    while (v18 != v45);
  }

  sub_183901308(v10, &__p);
  v20 = __p;
  v21 = v31;
  if (__p != v31)
  {
    v22 = v39;
    do
    {
      if (v22 < v40)
      {
        *v22 = *v20;
        *(v22 + 16) = v20[1];
        *(v22 + 32) = v20[2];
        *(v22 + 48) = v20[3];
        *(v22 + 64) = *(v20 + 8);
        v22 += 72;
      }

      else
      {
        v22 = sub_1836E1A24(&v38, v20);
      }

      v39 = v22;
      v20 = (v20 + 72);
    }

    while (v20 != v21);
  }

  sub_183900F20(&v33);
  sub_18368D56C(&v44, v45[0]);
  sub_18368D56C(&v46, v47);
  sub_1836E1928(v50);
  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }

  sub_18390BF9C(&__p);
  sub_183901960(&v33, &__p);
  sub_183902600(&__p, v29, 0);
}

void sub_183911198(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, char a43)
{
  sub_18368D56C(&STACK[0x510], STACK[0x518]);
  sub_18368D56C(v44 - 256, *(v44 - 248));
  sub_18368D56C(v43 + 208, STACK[0x4D8]);
  sub_1836DD2D8(v43 + 184, STACK[0x4C0]);
  sub_18390BF1C(v43 + 128);
  v46 = STACK[0x468];
  if (STACK[0x468])
  {
    STACK[0x470] = v46;
    operator delete(v46);
    v47 = STACK[0x450];
    if (!STACK[0x450])
    {
LABEL_3:
      sub_18368D56C(v43 + 56, STACK[0x440]);
      v48 = STACK[0x420];
      if (!STACK[0x420])
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v47 = STACK[0x450];
    if (!STACK[0x450])
    {
      goto LABEL_3;
    }
  }

  STACK[0x458] = v47;
  operator delete(v47);
  sub_18368D56C(v43 + 56, STACK[0x440]);
  v48 = STACK[0x420];
  if (!STACK[0x420])
  {
LABEL_4:
    if ((SLOBYTE(STACK[0x417]) & 0x80000000) == 0)
    {
LABEL_10:
      if (a28)
      {
        operator delete(a28);
      }

      sub_18368922C(&a40, a41);
      sub_18390C484(&a43);
      sub_18390C484(&STACK[0x208]);
      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(STACK[0x400]);
    goto LABEL_10;
  }

LABEL_8:
  STACK[0x428] = v48;
  operator delete(v48);
  if ((SLOBYTE(STACK[0x417]) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_1839115A4()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  v1[1] = 0;
  v0[2] = 0;
  v0[3] = v1;
  v0[0] = v0;
  v0[1] = v0;
  operator new();
}

void sub_183911F40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *a15)
{
  sub_183824E44(&a11);
  sub_18368D56C(&a14, a15);
  _Unwind_Resume(a1);
}

void sub_183911F74(uint64_t a1@<X1>, void *a2@<X8>, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v12 = *MEMORY[0x1E69E9840];
  v11[2] = a1;
  a3;
  a4;
  a8;
  a9;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v10[2] = 0;
  v10[3] = v11;
  v10[0] = v10;
  v10[1] = v10;
  operator new();
}

void sub_1839142E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (v17)
  {
    operator delete(v17);
  }

  JUMPOUT(0x183914444);
}

void sub_183914370(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
    __cxa_rethrow();
  }

  JUMPOUT(0x18391455CLL);
}

void sub_1839143B4(void *a1, int a2)
{
  if (a2)
  {
    sub_183686078(a1);
  }

  JUMPOUT(0x18391455CLL);
}

void sub_183914440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, void *a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t *a46, uint64_t a47, uint64_t a48, void *a49)
{
  if (a39)
  {
    v50 = a38;
    v51 = *(a37 + 8);
    v52 = *a38;
    *(v52 + 8) = v51;
    *v51 = v52;
    a39 = 0;
    if (v50 != &a37)
    {
      do
      {
        v53 = v50[1];
        operator delete(v50);
        v50 = v53;
      }

      while (v53 != &a37);
    }
  }

  if (a43)
  {
    MEMORY[0x1865E5E90](a43 - 16, 0x1020C805730B0C9);
  }

  if (a47)
  {
    v54 = a46;
    v55 = *(a45 + 8);
    v56 = *a46;
    *(v56 + 8) = v55;
    *v55 = v56;
    a47 = 0;
    if (v54 != &a45)
    {
      do
      {
        v57 = v54[1];
        operator delete(v54);
        v54 = v57;
      }

      while (v57 != &a45);
    }
  }

  sub_1836E1928(a49);
  v58 = a17;
  v59 = *a17;
  if (*a17)
  {
    v60 = a17[1];
    v61 = *a17;
    if (v60 != v59)
    {
      do
      {
        v60 = sub_183915960(v60 - 416);
      }

      while (v60 != v59);
      v58 = a17;
      v61 = *a17;
    }

    v58[1] = v59;
    operator delete(v61);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_183914564(uint64_t a1, uint64_t a2, double a3)
{
  if (*(a1 + 16) == *(a1 + 8))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(*(a1 + 24) + 16 * v3 + 8);
      result = sub_183915C9C(a1, a2, a3);
      if ((result & 1) == 0)
      {
        v4 = a2;
        if (!a2)
        {
          return result;
        }

LABEL_11:
        sub_183915960(v4);

        JUMPOUT(0x1865E5EC0);
      }
    }

    else
    {
      v4 = a2;
      result = sub_183915C9C(a1, a2, a3);
      if (result)
      {
        return result;
      }
    }

    if (v4)
    {
      goto LABEL_11;
    }
  }

  else
  {

    return sub_183915C9C(a1, a2, a3);
  }

  return result;
}

void sub_183914618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, int a8, double a9, unsigned __int8 a10, char a11)
{
  v118 = a3;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = v20[2](v20, a1);
  *(a1 + 104) = v21;
  if (v21 > a9)
  {
    goto LABEL_131;
  }

  v22 = *(a1 + 48);
  v23 = *(v22 + 80) + 72 * *(*(v22 + 32) + 40 * a2 + 16) + 72 * a3;
  v117 = *(v23 + 8);
  v112 = v23;
  v24 = *(v23 + 24);
  v108 = v18;
  if (*(v22 + 176) != 1)
  {
    v25 = *(v22 + 128) + 24 * v24;
    if (*(v25 + 23) < 0)
    {
LABEL_8:
      sub_183688F34(__p, *v25, *(v25 + 8));
      goto LABEL_9;
    }

LABEL_6:
    v26 = *v25;
    v114 = *(v25 + 16);
    *__p = v26;
    goto LABEL_9;
  }

  if (!v24)
  {
    v25 = *(v22 + 128);
    if (*(v25 + 23) < 0)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_18389D1A4(v24, __p);
LABEL_9:
  sub_18389C888(__p, &v115);
  if (SHIBYTE(v114) < 0)
  {
    operator delete(__p[0]);
  }

  v27 = (v116 - v115) >> 2;
  if (!a10)
  {
    v27 = 1;
  }

  v107 = v27;
  sub_1836DB51C(a1 + 56, &v117);
  sub_1836DB51C(a1 + 80, &v118);
  v28 = *(a1 + 136);
  *(a1 + 136) = v28 + v19[2](v19, v112);
  *(a1 + 200) += *(v112 + 64);
  v29 = v20[2](v20, a1);
  *(a1 + 104) = v29;
  if (v29 <= a9)
  {
    v34 = v20[2](v20, a1);
    *(a1 + 104) = v34;
    if (v34 <= a9)
    {
      if (v107)
      {
        v35 = 0;
        v36 = a8 ^ 1 | a10;
        v105 = -1.30103;
        v37 = 0.0;
        v38 = 0.0;
        v39 = 0.0;
        v106 = v19;
        do
        {
          v40 = *(v115 + v35);
          v41 = objc_msgSend_characterType_(CHCharacterSetRules, v30, v40, v31, v32, v33, *&v105);
          v111 = sub_1837A4260(v40, v42, v43, v44, v45, v46);
          v51 = (v41 & 0x13) == 0;
          v109 = *(a1 + 64) - *(a1 + 56);
          v52 = v109 != 8;
          if ((v36 & 1) == 0)
          {
            v53 = v36;
            v54 = *(v112 + 64);
            v59 = v54 - objc_msgSend_expectedMaxStrokeCount_(CHCharacterSetRules, v47, v40, v48, v49, v50);
            if (v59 >= 1)
            {
              *(a1 + 152) = *(a1 + 152) + (*(v112 + 64) * v59);
            }

            v60 = objc_msgSend_expectedMinStrokeCount_(CHCharacterSetRules, v55, v40, v56, v57, v58);
            v36 = v53;
            v61 = *(v112 + 64);
            v62 = (v60 - v61);
            v63 = *(a1 + 152);
            if (v62 >= 1)
            {
              v63 = v63 + (v61 * v62);
              *(a1 + 152) = v63;
            }

            if (v63 > 15.654)
            {
              *(a1 + 152) = 0x402F4ED916872B02;
            }

            v64 = v20[2](v20, a1);
            *(a1 + 104) = v64;
            if (v64 > a9)
            {
              goto LABEL_127;
            }
          }

          v65 = *(a1 + 224);
          if (v65)
          {
            v66 = objc_msgSend_newCursorByAdvancingWithSymbol_fromCursor_inNetwork_(CHPatternNetwork, v47, v40, v65, v108, v50);
            v67 = v66;
            if (v66)
            {
              v68 = v66;
            }

            v69 = *(a1 + 224);
            *(a1 + 224) = v67;

            if (*(a1 + 224))
            {
              v70 = 1;
            }

            else
            {
              v70 = v109 == 8;
            }

            v52 = !v70;
          }

          v71 = *(a1 + 216);
          if (v71)
          {
            v71 = LXCursorCreateByAdvancing();
            v72 = *(a1 + 216);
            *(a1 + 216) = v71;
            if (v72)
            {
              CFRelease(v72);
              v71 = *(a1 + 216);
            }
          }

          if (v71)
          {
            v52 = 0;
          }

          v73 = v20[2](v20, a1);
          *(a1 + 104) = v73;
          if (v73 > a9)
          {
LABEL_127:

            v19 = v106;
            break;
          }

          v74 = *(a1 + 208);
          if (v52)
          {
            if (!v74)
            {
              goto LABEL_51;
            }

            *(a1 + 208) = 0;
            CFRelease(v74);
            v74 = *(a1 + 208);
          }

          if (!v74)
          {
            goto LABEL_51;
          }

          v75 = LXCursorCreateByAdvancing();
          v76 = *(a1 + 208);
          *(a1 + 208) = v75;
          if (v76)
          {
            CFRelease(v76);
            v75 = *(a1 + 208);
          }

          if (!v75)
          {
LABEL_51:
            v78 = *(a1 + 216);
            v51 = (v78 | v41 & 0x13) == 0;
            if (v78)
            {
              v37 = -0.0;
            }

            else
            {
              v37 = -15.654;
            }

            goto LABEL_54;
          }

          if (!*(a1 + 216))
          {
            LXCursorConditionalProbability();
            if (v77 < 0.0)
            {
              v37 = -v77;
            }
          }

LABEL_54:
          if (v51)
          {
            v37 = 1.30103;
          }

          if ((v41 & 0x2000) == 0)
          {
            v79 = *(a1 + 240);
            v80 = *(a1 + 8);
            v81 = *(a1 + 32);
            if (v79 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v79 = v80 - v81;
              *(a1 + 240) = v80 - v81;
            }

            *(a1 + 248) = v80 - (v81 + v79) + 1;
          }

          if (v37 > 0.0 || *(a1 + 208) || *(a1 + 216))
          {
            v82 = *(a1 + 120) + v37 * *(v112 + 64);
          }

          else
          {
            v82 = *(a1 + 120) + 15.654;
          }

          *(a1 + 120) = v82;
          v87 = v20[2](v20, a1);
          *(a1 + 104) = v87;
          if (v87 > a9)
          {
            goto LABEL_127;
          }

          if (a4)
          {
            if (*(*(*(a1 + 48) + 32) + 40 * *(v112 + 8) + 32) == 1 && (*(a1 + 208) || *(a1 + 216)) && (v41 & 0x20) != 0 && !LXCursorIsRoot())
            {
              if (*(a1 + 208))
              {
                LXCursorTerminationProbability();
                if (fabs(v89) == INFINITY)
                {
                  v38 = v105;
                }

                else
                {
                  v38 = v89;
                }
              }

              if (*(a1 + 216))
              {
                v38 = 0.0;
              }

              if (a11)
              {
                goto LABEL_87;
              }

LABEL_111:
              v94 = v39;
            }

            else
            {
              v38 = v105;
              if (v51 || !*(a1 + 208) && (v38 = 0.0, *(a1 + 216)))
              {
                if (!a11)
                {
                  goto LABEL_111;
                }
              }

              else
              {
                LMLanguageModelConditionalProbability();
                v38 = v88;
                if (!a11)
                {
                  goto LABEL_111;
                }
              }

LABEL_87:
              if (v109 == 8)
              {
                goto LABEL_111;
              }

              v90 = objc_msgSend_characterType_(CHCharacterSetRules, v83, *(*a1 + 4 * *(a1 + 8) - 4), v84, v85, v86);
              v92 = (v90 & 4) == 0 || (v41 & 3) == 0;
              v93 = (v90 & 3) == 0 || (v41 & 4) == 0;
              v94 = 16.0;
              if (v93 && v92)
              {
                v95 = (v90 >> 2) & 1;
                if ((v41 & 4) == 0)
                {
                  LODWORD(v95) = 1;
                }

                v97 = (v41 & 3) == 0 || (v90 & 3) != 0;
                if ((v95 & v97) != 0)
                {
                  v94 = v39;
                }

                else
                {
                  v94 = 8.0;
                }
              }
            }

            *(a1 + 168) = *(a1 + 168) + v94 - v38 * *(v112 + 64);
            v98 = v20[2](v20, a1);
            *(a1 + 104) = v98;
            v39 = v94;
            if (v98 > a9)
            {
              goto LABEL_127;
            }
          }

          v99 = 0.0;
          if (v52)
          {
            v99 = 15.654;
          }

          *(a1 + 184) = v99;
          v100 = v20[2](v20, a1);
          *(a1 + 104) = v100;
          if (v100 > a9)
          {
            goto LABEL_127;
          }

          v101 = *(a1 + 8);
          v102 = *a1;
          if (v101 == *(a1 + 16))
          {
            v103 = *(a1 + 400) * (v101 - 5) + 5;
            *(a1 + 16) = v103;
            v102 = malloc_type_realloc(v102, 4 * v103, 0x100004052888210uLL);
            if (!v102)
            {
              if (qword_1EA84DC48 != -1)
              {
                dispatch_once(&qword_1EA84DC48, &unk_1EF1BC930);
              }

              v19 = v106;
              v104 = qword_1EA84DC50[0];
              if (os_log_type_enabled(v104, OS_LOG_TYPE_ERROR))
              {
                LOWORD(__p[0]) = 0;
                _os_log_impl(&dword_18366B000, v104, OS_LOG_TYPE_ERROR, "Error: unable to reallocate memory for path expansion.", __p, 2u);
              }

              goto LABEL_120;
            }

            *a1 = v102;
            v101 = *(a1 + 8);
          }

          *(a1 + 8) = v101 + 1;
          *(v102 + v101) = v40;
          v19 = v106;
LABEL_120:

          ++v35;
        }

        while (v107 != v35);
      }
    }
  }

  if (v115)
  {
    v116 = v115;
    operator delete(v115);
  }

  v18 = v108;
LABEL_131:
}

void sub_183914E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_183914ECC(uint64_t a1, uint64_t a2, const void *a3, const void *a4, void *a5, int a6)
{
  v12 = a5;
  *(a1 + 216) = 0u;
  v13 = (a1 + 216);
  *(a1 + 41) = 1;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0u;
  v34 = v12;
  v35 = (a1 + 208);
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 232) = a6;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = xmmword_1839DA100;
  v15 = *(a2 + 232);
  v14 = *(a2 + 240);
  *(a1 + 24) = v14;
  *(a1 + 40) = v14 == 0;
  if (v14 <= 5)
  {
    v16 = 5;
  }

  else
  {
    v16 = v14;
  }

  *(a1 + 8) = 0;
  v17 = malloc_type_malloc(4 * v16 + 16, 0x100004052888210uLL);
  cf = a3;
  obj = a5;
  *a1 = v17;
  *(a1 + 32) = 0;
  v22 = *(a1 + 24);
  if ((v22 + 1) >= 6)
  {
    v23 = 0;
    *(a1 + 240) = xmmword_1839D0630;
    v24 = (a1 + 240);
  }

  else
  {
    v23 = 5 - v22;
    *(a1 + 32) = 5 - v22;
    memset_pattern16(v17, &unk_1839CDB10, 4 * (5 - v22));
    *(a1 + 240) = xmmword_1839D0630;
    v24 = (a1 + 240);
    if (v16 == v23)
    {
      goto LABEL_14;
    }
  }

  v25 = 0;
  v26 = 4 * v23;
  do
  {
    while (1)
    {
      v27 = *(v15 + 4 * v25);
      *(*a1 + v26) = v27;
      if ((objc_msgSend_characterType_(CHCharacterSetRules, v18, v27, v19, v20, v21) & 0x2000) == 0)
      {
        break;
      }

      ++v25;
      v26 += 4;
      if (v16 - *(a1 + 32) <= v25)
      {
        goto LABEL_14;
      }
    }

    if (*v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      *v24 = v25;
    }

    *(a1 + 248) = ++v25;
    v26 += 4;
  }

  while (v16 - *(a1 + 32) > v25);
LABEL_14:
  objc_storeStrong((a1 + 224), obj);
  v28 = *(a1 + 408) + v16;
  *(a1 + 8) = v16;
  *(a1 + 16) = v28;
  if (a4)
  {
    CFRetain(a4);
  }

  v29 = *v13;
  *v13 = a4;
  if (v29)
  {
    CFRelease(v29);
  }

  if (cf)
  {
    CFRetain(cf);
  }

  v30 = *v35;
  *v35 = cf;
  if (v30)
  {
    CFRelease(v30);
  }

  return a1;
}

void sub_183915130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, const void **a14)
{
  v17 = *(v14 + 376);
  if (v17)
  {
    operator delete(v17);
    v18 = *(v14 + 352);
    if (!v18)
    {
LABEL_3:
      v19 = *(v14 + 328);
      if (!v19)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v18 = *(v14 + 352);
    if (!v18)
    {
      goto LABEL_3;
    }
  }

  operator delete(v18);
  v19 = *(v14 + 328);
  if (!v19)
  {
LABEL_4:
    v20 = *(v14 + 304);
    if (!v20)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v14 + 336) = v19;
  operator delete(v19);
  v20 = *(v14 + 304);
  if (!v20)
  {
LABEL_5:
    v21 = *(v14 + 280);
    if (!v21)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v14 + 312) = v20;
  operator delete(v20);
  v21 = *(v14 + 280);
  if (!v21)
  {
LABEL_6:
    v22 = *(v15 + 40);
    if (!v22)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  *(v14 + 288) = v21;
  operator delete(v21);
  v22 = *(v15 + 40);
  if (!v22)
  {
LABEL_8:

    sub_1836C040C(v15);
    sub_1836C040C(a14);
    v23 = *(v14 + 80);
    if (v23)
    {
      *(v14 + 88) = v23;
      operator delete(v23);
      v24 = *a10;
      if (!*a10)
      {
LABEL_10:

        _Unwind_Resume(a1);
      }
    }

    else
    {
      v24 = *a10;
      if (!*a10)
      {
        goto LABEL_10;
      }
    }

    *(v14 + 64) = v24;
    operator delete(v24);

    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v14 + 264) = v22;
  operator delete(v22);
  goto LABEL_8;
}

uint64_t sub_183915224(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  v4 = *(a2 + 48);
  *(a1 + 56) = 0;
  *(a1 + 48) = v4;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v6 = *(a2 + 56);
  v5 = *(a2 + 64);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  v9 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 184) = *(a2 + 184);
  if (v9)
  {
    CFRetain(v9);
  }

  *(a1 + 208) = v9;
  v10 = *(a2 + 216);
  if (v10)
  {
    CFRetain(*(a2 + 216));
  }

  *(a1 + 224) = 0;
  *(a1 + 216) = v10;
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 256) = 0;
  v12 = *(a2 + 256);
  v11 = *(a2 + 264);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18368964C();
  }

  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  v14 = *(a2 + 280);
  v13 = *(a2 + 288);
  if (v13 != v14)
  {
    if (((v13 - v14) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_18368964C();
  }

  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  v16 = *(a2 + 304);
  v15 = *(a2 + 312);
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  v18 = *(a2 + 328);
  v17 = *(a2 + 336);
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1836D58DC();
  }

  sub_18369F384((a1 + 352), a2 + 352);
  sub_18369F384((a1 + 376), a2 + 376);
  *(a1 + 400) = xmmword_1839DA100;
  if (*a2)
  {
    v19 = malloc_type_malloc(4 * *(a1 + 16), 0x100004052888210uLL);
    *a1 = v19;
    *(a1 + 240) = *(a2 + 240);
    memcpy(v19, *a2, 4 * *(a1 + 16));
  }

  objc_storeStrong((a1 + 224), *(a2 + 224));
  return a1;
}

void sub_18391556C(_Unwind_Exception *a1)
{
  v6 = *(v1 + 376);
  if (v6)
  {
    operator delete(v6);
    v7 = *(v1 + 352);
    if (!v7)
    {
LABEL_3:
      v8 = *(v1 + 328);
      if (!v8)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v7 = *(v1 + 352);
    if (!v7)
    {
      goto LABEL_3;
    }
  }

  operator delete(v7);
  v8 = *(v1 + 328);
  if (!v8)
  {
LABEL_4:
    v9 = *(v1 + 304);
    if (!v9)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  *(v1 + 336) = v8;
  operator delete(v8);
  v9 = *(v1 + 304);
  if (!v9)
  {
LABEL_5:
    v10 = *(v1 + 280);
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_14;
  }

LABEL_13:
  *(v1 + 312) = v9;
  operator delete(v9);
  v10 = *(v1 + 280);
  if (!v10)
  {
LABEL_6:
    v11 = *(v2 + 32);
    if (!v11)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_14:
  *(v1 + 288) = v10;
  operator delete(v10);
  v11 = *(v2 + 32);
  if (!v11)
  {
LABEL_8:

    sub_1836C040C((v1 + 216));
    sub_1836C040C((v1 + 208));
    v12 = *v4;
    if (*v4)
    {
      *(v1 + 88) = v12;
      operator delete(v12);
    }

    v13 = *v3;
    if (*v3)
    {
      *(v1 + 64) = v13;
      operator delete(v13);
    }

    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v1 + 264) = v11;
  operator delete(v11);
  goto LABEL_8;
}

void sub_1839156B4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 8) - *(a1 + 32);
  *&v33 = 0;
  *(&v33 + 1) = v4;
  v5 = ((*(a1 + 64) - *(a1 + 56)) >> 3) - 1;
  *&v32 = 0;
  *(&v32 + 1) = v5;
  sub_18368C3C8(a1 + 256, &v33);
  sub_18368C3C8(a1 + 280, &v32);
  v31 = *(a1 + 136) / *(a1 + 200);
  sub_183707A70(a1 + 304, &v31);
  v11 = *(a1 + 216);
  if (*(a1 + 208))
  {
    HasEntries = LXCursorHasEntries();
    v13 = HasEntries != 0;
    if (HasEntries || !v11)
    {
LABEL_7:
      v14 = *(a1 + 224);
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }

LABEL_6:
    v13 = LXCursorHasEntries() != 0;
    goto LABEL_7;
  }

  if (v11)
  {
    goto LABEL_6;
  }

  v13 = 0;
  v14 = *(a1 + 224);
  if (v14)
  {
LABEL_8:
    isCompletePattern = objc_msgSend_isCompletePattern(v14, v6, v7, v8, v9, v10);
    v16 = *(a1 + 360);
    v17 = *(a1 + 368);
    if (v16 != v17 << 6)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

LABEL_11:
  isCompletePattern = 0;
  v16 = *(a1 + 360);
  v17 = *(a1 + 368);
  if (v16 != v17 << 6)
  {
    goto LABEL_19;
  }

LABEL_12:
  if ((v16 + 1) < 0)
  {
    goto LABEL_34;
  }

  v18 = v17 << 7;
  if (v18 <= (v16 & 0x3FFFFFFFFFFFFFC0) + 64)
  {
    v18 = (v16 & 0x3FFFFFFFFFFFFFC0) + 64;
  }

  if (v16 <= 0x3FFFFFFFFFFFFFFELL)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_1836F8430(a1 + 352, v19);
  v16 = *(a1 + 360);
LABEL_19:
  *(a1 + 360) = v16 + 1;
  v20 = *(a1 + 352);
  v21 = v16 >> 6;
  v22 = 1 << v16;
  if (v13)
  {
    *(v20 + 8 * v21) |= v22;
    v23 = *(a1 + 384);
    v24 = *(a1 + 392);
    if (v23 != v24 << 6)
    {
      goto LABEL_30;
    }
  }

  else
  {
    *(v20 + 8 * v21) &= ~v22;
    v23 = *(a1 + 384);
    v24 = *(a1 + 392);
    if (v23 != v24 << 6)
    {
      goto LABEL_30;
    }
  }

  if ((v23 + 1) < 0)
  {
LABEL_34:
    sub_18369F168();
  }

  v25 = v24 << 7;
  if (v25 <= (v23 & 0x3FFFFFFFFFFFFFC0) + 64)
  {
    v25 = (v23 & 0x3FFFFFFFFFFFFFC0) + 64;
  }

  if (v23 <= 0x3FFFFFFFFFFFFFFELL)
  {
    v26 = v25;
  }

  else
  {
    v26 = 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_1836F8430(a1 + 376, v26);
  v23 = *(a1 + 384);
LABEL_30:
  *(a1 + 384) = v23 + 1;
  v27 = *(a1 + 376);
  v28 = v23 >> 6;
  v29 = 1 << v23;
  if (isCompletePattern)
  {
    v30 = *(v27 + 8 * v28) | v29;
  }

  else
  {
    v30 = *(v27 + 8 * v28) & ~v29;
  }

  *(v27 + 8 * v28) = v30;
  *(a1 + 160) = *(a1 + 160) + *(a1 + 168);
  *(a1 + 144) = *(a1 + 144) + *(a1 + 152);
  *(a1 + 112) = *(a1 + 112) + *(a1 + 120);
  *(a1 + 176) = *(a1 + 176) + *(a1 + 184);
  *(a1 + 128) = *(a1 + 128) + *(a1 + 136);
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 120) = 0;
  *(a1 + 184) = 0;
  *(a1 + 136) = 0;
  *(a1 + 200) = 0;
  *(a1 + 41) = 0;
  sub_183707A70(a1 + 328, (a1 + 104));
}

uint64_t sub_183915960(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
    *a1 = 0;
  }

  v3 = *(a1 + 224);
  if (v3)
  {
    *(a1 + 224) = 0;
  }

  v4 = *(a1 + 376);
  if (v4)
  {
    operator delete(v4);
  }

  v5 = *(a1 + 352);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 328);
  if (v6)
  {
    *(a1 + 336) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 304);
  if (v7)
  {
    *(a1 + 312) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 280);
  if (v8)
  {
    *(a1 + 288) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 256);
  if (v9)
  {
    *(a1 + 264) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 216);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 208);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    *(a1 + 88) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    *(a1 + 64) = v13;
    operator delete(v13);
  }

  return a1;
}