uint64_t **sub_BEF370(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t **sub_BEF528(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_BEF6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_BEF758(a1, a2);
      a2 += 32;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t **sub_BEF758(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
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
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_BEFB5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_BEFB70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BEFB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_BEFC00(a1, a2);
      a2 += 32;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t **sub_BEFC00(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
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
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_BF0004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_BF0018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BF0030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 32 * a3;
    do
    {
      sub_BF00A8(a1, a2);
      a2 += 32;
      v5 -= 32;
    }

    while (v5);
  }

  return a1;
}

uint64_t **sub_BF00A8(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
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
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_BF04AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_BF04C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_BF04D8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  *(a1 + 376) = *(a1 + 368);
  *(a1 + 352) = 0;
  v5 = a3[1] - *a3;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v33 = v5 >> 4;
    do
    {
      v9 = 0;
      v10 = 16 * v8;
      v34 = v8;
      v35 = 16 * v8;
      v36 = v8 + 1;
      do
      {
        v12 = sub_BDE550((a2 + 48), *(*v3 + v10));
        if (v9 > 4u)
        {
          if (v9 <= 6u)
          {
            if (v9 == 5)
            {
              v13 = *(v12 + 32);
              v14 = *(a1 + 368);
              if (*(a1 + 352) > v8)
              {
                goto LABEL_6;
              }

LABEL_44:
              v19 = v3;
              *(a1 + 352) = v36;
              v20 = *(a1 + 360) * v36;
              v21 = *(a1 + 376);
              v22 = (v21 - v14) >> 3;
              v23 = v20 - v22;
              if (v20 <= v22)
              {
                v10 = v35;
                v3 = v19;
                if (v20 < v22)
                {
                  *(a1 + 376) = v14 + 8 * v20;
                }
              }

              else
              {
                v24 = *(a1 + 384);
                if (v23 > (v24 - v21) >> 3)
                {
                  if (!(v20 >> 61))
                  {
                    v25 = v24 - v14;
                    if (v25 >> 2 > v20)
                    {
                      v20 = v25 >> 2;
                    }

                    if (v25 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v20 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    if (!(v20 >> 61))
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  sub_1794();
                }

                bzero(*(a1 + 376), 8 * v23);
                v11 = v21 + 8 * v23;
                v8 = v34;
                v10 = v35;
                *(a1 + 376) = v11;
                v3 = v19;
              }

              goto LABEL_6;
            }

            if (v9 != 6)
            {
LABEL_66:
              exception = __cxa_allocate_exception(0x40uLL);
              v32 = sub_2D390(exception, "Requested to evaluate unknown criterion", 0x27uLL);
            }

            v13 = *(v12 + 40);
            v14 = *(a1 + 368);
            if (*(a1 + 352) <= v8)
            {
              goto LABEL_44;
            }
          }

          else
          {
            if (v9 == 7)
            {
              v13 = *(v12 + 48);
              v14 = *(a1 + 368);
              if (*(a1 + 352) > v8)
              {
                goto LABEL_6;
              }

              goto LABEL_44;
            }

            if (v9 == 8)
            {
              v13 = *(v12 + 56);
              v14 = *(a1 + 368);
              if (*(a1 + 352) > v8)
              {
                goto LABEL_6;
              }

              goto LABEL_44;
            }

            if (v9 != 9)
            {
              goto LABEL_66;
            }

            v13 = *(v12 + 64);
            v14 = *(a1 + 368);
            if (*(a1 + 352) <= v8)
            {
              goto LABEL_44;
            }
          }
        }

        else
        {
          if (v9 <= 1u)
          {
            if (!v9)
            {
              if (*v12)
              {
                v13 = 1.0;
              }

              else
              {
                v13 = 0.0;
              }

              v14 = *(a1 + 368);
              if (*(a1 + 352) > v8)
              {
                goto LABEL_6;
              }

              goto LABEL_44;
            }

            v15 = *(v12 + 4);
            goto LABEL_38;
          }

          if (v9 == 2)
          {
            v15 = *(v12 + 8);
LABEL_38:
            v16 = v15 / 10;
            v17 = v15 % 10;
            if (v15 < 0)
            {
              v18 = -5;
            }

            else
            {
              v18 = 5;
            }

            v13 = (v16 + (((103 * (v18 + v17)) >> 15) & 1) + ((103 * (v18 + v17)) >> 10));
            v14 = *(a1 + 368);
            if (*(a1 + 352) > v8)
            {
              goto LABEL_6;
            }

            goto LABEL_44;
          }

          if (v9 == 3)
          {
            v13 = *(v12 + 16);
            v14 = *(a1 + 368);
            if (*(a1 + 352) > v8)
            {
              goto LABEL_6;
            }

            goto LABEL_44;
          }

          if (v9 != 4)
          {
            goto LABEL_66;
          }

          v13 = *(v12 + 24);
          v14 = *(a1 + 368);
          if (*(a1 + 352) <= v8)
          {
            goto LABEL_44;
          }
        }

LABEL_6:
        *(v14 + v7 * *(a1 + 360) + 8 * v9++) = v13;
      }

      while (v9 != 10);
      v7 += 8;
      v8 = v36;
    }

    while (v36 != v33);
  }

  sub_BF09F8(a1 + 352, *(a1 + 80));
  sub_BF1420(&v37, (a1 + 352));
  v26 = v37;
  if (v38 == v37)
  {
    if (!v37)
    {
      return;
    }
  }

  else
  {
    v27 = (v38 - v37) >> 3;
    v28 = (*v3 + 8);
    v29 = v37;
    do
    {
      v30 = *v29++;
      *v28 = v30;
      v28 += 2;
      --v27;
    }

    while (v27);
  }

  operator delete(v26);
}

uint64_t sub_BF0944(unint64_t *a1, unint64_t a2, uint64_t a3)
{
  if (*a1 > a2)
  {
    return a1[2] + 8 * a1[1] * a2 + 8 * a3;
  }

  *a1 = a2 + 1;
  v3 = a1[2];
  v4 = a1[1] * (a2 + 1);
  v5 = (a1[3] - v3) >> 3;
  v6 = v4 >= v5;
  v7 = v4 - v5;
  if (v7 != 0 && v6)
  {
    v8 = a1;
    v9 = a2;
    v10 = a3;
    sub_30B70((a1 + 2), v7);
    a1 = v8;
    a2 = v9;
    a3 = v10;
    return a1[2] + 8 * a1[1] * a2 + 8 * a3;
  }

  if (v6)
  {
    return a1[2] + 8 * a1[1] * a2 + 8 * a3;
  }

  a1[3] = v3 + 8 * v4;
  return a1[2] + 8 * a1[1] * a2 + 8 * a3;
}

void sub_BF09F8(uint64_t a1, int a2)
{
  v74 = *(a1 + 8);
  if (v74)
  {
    v2 = a2;
    for (i = 0; i != v74; ++i)
    {
      v6 = *a1;
      if (!*a1)
      {
        v78 = 0x7FEFFFFFFFFFFFFFLL;
        if (v2 != 2)
        {
          goto LABEL_50;
        }

        goto LABEL_61;
      }

      v7 = 0;
      v8 = *(a1 + 16);
      v9 = 1.79769313e308;
      v76 = i;
      do
      {
        v12 = v7 + 1;
        if (*a1 <= v7)
        {
          *a1 = v12;
          v13 = *(a1 + 8) * v12;
          v14 = *(a1 + 24);
          v15 = (v14 - v8) >> 3;
          v16 = v13 - v15;
          if (v13 > v15)
          {
            v17 = *(a1 + 32);
            if (v16 > (v17 - v14) >> 3)
            {
              if (!(v13 >> 61))
              {
                v18 = v17 - v8;
                if (v18 >> 2 > v13)
                {
                  v13 = v18 >> 2;
                }

                if (v18 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v19 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v19 = v13;
                }

                if (!(v19 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              sub_1794();
            }

            bzero(*(a1 + 24), 8 * v16);
            v10 = v14 + 8 * v16;
            i = v76;
            goto LABEL_9;
          }

          if (v13 < v15)
          {
            v10 = v8 + 8 * v13;
LABEL_9:
            *(a1 + 24) = v10;
          }
        }

        v11 = v8 + 8 * *(a1 + 8) * v7;
        if (*(v11 + 8 * i) < v9)
        {
          v9 = *(v11 + 8 * i);
        }

        ++v7;
      }

      while (v6 != v12);
      v78 = *&v9;
      v2 = a2;
      if (v9 >= 0.0)
      {
        goto LABEL_49;
      }

      v20 = off_2671FF8;
      v80 = off_2671FF8;
      v81 = &v78;
      v83 = &v80;
      v21 = *a1;
      if (!*a1)
      {
        goto LABEL_120;
      }

      v22 = 0;
      do
      {
        v23 = v22 + 1;
        v24 = *(a1 + 16);
        if (*a1 <= v22)
        {
          *a1 = v23;
          v25 = *(a1 + 8) * v23;
          v26 = *(a1 + 24);
          v27 = (v26 - v24) >> 3;
          v28 = v25 - v27;
          if (v25 <= v27)
          {
            i = v76;
            if (v25 < v27)
            {
              *(a1 + 24) = v24 + 8 * v25;
            }
          }

          else
          {
            v29 = *(a1 + 32);
            if (v28 > (v29 - v26) >> 3)
            {
              if (!(v25 >> 61))
              {
                v30 = v29 - v24;
                if (v30 >> 2 > v25)
                {
                  v25 = v30 >> 2;
                }

                if (v30 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v31 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v31 = v25;
                }

                if (!(v31 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              sub_1794();
            }

            bzero(*(a1 + 24), 8 * v28);
            *(a1 + 24) = v26 + 8 * v28;
            i = v76;
          }
        }

        v79 = *(v24 + 8 * *(a1 + 8) * v22 + 8 * i);
        if (!v83)
        {
          sub_2B7420();
        }

        v32 = ((*v83)[6])(v83, &v79);
        *sub_BF0944(a1, v22++, i) = v32;
      }

      while (v21 != v23);
      if (v83 == &v80)
      {
        v20 = *v83;
        v2 = a2;
LABEL_120:
        v20[4]();
        v78 = 0;
        if (v2 != 2)
        {
          goto LABEL_50;
        }

LABEL_61:
        v40 = *a1;
        if (*a1)
        {
          v41 = 0;
          v42 = *(a1 + 8);
          v43 = *(a1 + 16);
          v44 = -1.79769313e308;
          do
          {
            v46 = v41 + 1;
            if (*a1 <= v41)
            {
              *a1 = v46;
              v47 = (*(a1 + 24) - v43) >> 3;
              if (v42 * v46 > v47)
              {
                sub_30B70(a1 + 16, v42 * v46 - v47);
                v42 = *(a1 + 8);
                v43 = *(a1 + 16);
              }

              else if (v42 * v46 < v47)
              {
                *(a1 + 24) = v43 + 8 * v42 * v46;
              }
            }

            v45 = v43 + 8 * v42 * v41;
            if (v44 < *(v45 + 8 * i))
            {
              v44 = *(v45 + 8 * i);
            }

            ++v41;
          }

          while (v40 != v46);
          v40 = *a1;
          v2 = a2;
        }

        else
        {
          v44 = -1.79769313e308;
        }

        v77 = v44;
        v5 = off_2672178;
        v80 = off_2672178;
        v81 = &v78;
        v82 = &v77;
        v83 = &v80;
        if (!v40)
        {
          goto LABEL_4;
        }

        v62 = 0;
        do
        {
          v63 = v62 + 1;
          v64 = *(a1 + 8);
          v65 = *(a1 + 16);
          if (*a1 <= v62)
          {
            *a1 = v63;
            v66 = (*(a1 + 24) - v65) >> 3;
            if (v64 * v63 <= v66)
            {
              if (v64 * v63 < v66)
              {
                *(a1 + 24) = v65 + 8 * v64 * v63;
              }
            }

            else
            {
              sub_30B70(a1 + 16, v64 * v63 - v66);
              v64 = *(a1 + 8);
              v65 = *(a1 + 16);
            }
          }

          v79 = *(v65 + 8 * v64 * v62 + 8 * i);
          if (!v83)
          {
            sub_2B7420();
          }

          v67 = ((*v83)[6])(v83, &v79);
          *sub_BF0944(a1, v62++, i) = v67;
        }

        while (v40 != v63);
LABEL_116:
        if (v83 == &v80)
        {
          v5 = *v83;
          v2 = a2;
          goto LABEL_4;
        }

        v2 = a2;
        if (v83)
        {
          (*v83)[5]();
        }

        continue;
      }

      v2 = a2;
      if (v83)
      {
        (*v83)[5]();
      }

      v78 = 0;
LABEL_49:
      if (v2 == 2)
      {
        goto LABEL_61;
      }

LABEL_50:
      if (v2 == 1)
      {
        v48 = *a1;
        if (*a1)
        {
          v49 = 0;
          v50 = *(a1 + 8);
          v51 = *(a1 + 16);
          v52 = -1.79769313e308;
          do
          {
            v54 = v49 + 1;
            if (*a1 <= v49)
            {
              *a1 = v54;
              v55 = (*(a1 + 24) - v51) >> 3;
              if (v50 * v54 <= v55)
              {
                if (v50 * v54 < v55)
                {
                  *(a1 + 24) = v51 + 8 * v50 * v54;
                }
              }

              else
              {
                sub_30B70(a1 + 16, v50 * v54 - v55);
                v50 = *(a1 + 8);
                v51 = *(a1 + 16);
              }
            }

            v53 = v51 + 8 * v50 * v49;
            if (v52 < *(v53 + 8 * i))
            {
              v52 = *(v53 + 8 * i);
            }

            ++v49;
          }

          while (v48 != v54);
          v48 = *a1;
          v2 = a2;
        }

        else
        {
          v52 = -1.79769313e308;
        }

        v77 = v52;
        v5 = off_26720F8;
        v80 = off_26720F8;
        v81 = &v77;
        v83 = &v80;
        if (!v48)
        {
          goto LABEL_4;
        }

        v56 = 0;
        do
        {
          v57 = v56 + 1;
          v58 = *(a1 + 8);
          v59 = *(a1 + 16);
          if (*a1 <= v56)
          {
            *a1 = v57;
            v60 = (*(a1 + 24) - v59) >> 3;
            if (v58 * v57 <= v60)
            {
              if (v58 * v57 < v60)
              {
                *(a1 + 24) = v59 + 8 * v58 * v57;
              }
            }

            else
            {
              sub_30B70(a1 + 16, v58 * v57 - v60);
              v58 = *(a1 + 8);
              v59 = *(a1 + 16);
            }
          }

          v79 = *(v59 + 8 * v58 * v56 + 8 * i);
          if (!v83)
          {
            sub_2B7420();
          }

          v61 = ((*v83)[6])(v83, &v79);
          *sub_BF0944(a1, v56++, i) = v61;
        }

        while (v48 != v57);
        goto LABEL_116;
      }

      if (!v2)
      {
        v33 = *a1;
        if (*a1)
        {
          v34 = 0;
          v35 = *(a1 + 8);
          v36 = *(a1 + 16);
          v37 = 0.0;
          do
          {
            v38 = v34 + 1;
            if (*a1 <= v34)
            {
              *a1 = v38;
              v39 = (*(a1 + 24) - v36) >> 3;
              if (v35 * v38 <= v39)
              {
                if (v35 * v38 < v39)
                {
                  *(a1 + 24) = v36 + 8 * v35 * v38;
                }
              }

              else
              {
                sub_30B70(a1 + 16, v35 * v38 - v39);
                v35 = *(a1 + 8);
                v36 = *(a1 + 16);
              }
            }

            v37 = v37 + *(v36 + 8 * v35 * v34++ + 8 * i);
          }

          while (v33 != v38);
          v33 = *a1;
          v2 = a2;
        }

        else
        {
          v37 = 0.0;
        }

        v77 = v37;
        v5 = off_2672078;
        v80 = off_2672078;
        v81 = &v77;
        v83 = &v80;
        if (v33)
        {
          v68 = 0;
          do
          {
            v69 = v68 + 1;
            v70 = *(a1 + 8);
            v71 = *(a1 + 16);
            if (*a1 <= v68)
            {
              *a1 = v69;
              v72 = (*(a1 + 24) - v71) >> 3;
              if (v70 * v69 <= v72)
              {
                if (v70 * v69 < v72)
                {
                  *(a1 + 24) = v71 + 8 * v70 * v69;
                }
              }

              else
              {
                sub_30B70(a1 + 16, v70 * v69 - v72);
                v70 = *(a1 + 8);
                v71 = *(a1 + 16);
              }
            }

            v79 = *(v71 + 8 * v70 * v68 + 8 * i);
            if (!v83)
            {
              sub_2B7420();
            }

            v73 = ((*v83)[6])(v83, &v79);
            *sub_BF0944(a1, v68++, i) = v73;
          }

          while (v33 != v69);
          goto LABEL_116;
        }

LABEL_4:
        v5[4]();
      }
    }
  }
}

void sub_BF137C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BCE634(va);
  _Unwind_Resume(a1);
}

void sub_BF1390(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BCE634(va);
  _Unwind_Resume(a1);
}

void sub_BF13A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BCE634(va);
  _Unwind_Resume(a1);
}

void sub_BF13B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BCE634(va);
  _Unwind_Resume(a1);
}

void sub_BF13CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BCE634(va);
  _Unwind_Resume(a1);
}

void sub_BF13E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BCE634(va);
  _Unwind_Resume(a1);
}

void sub_BF13F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BCE634(va);
  _Unwind_Resume(a1);
}

void sub_BF140C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_BCE634(va);
  _Unwind_Resume(a1);
}

void *sub_BF1420(void *result, unint64_t *a2)
{
  v2 = *a2;
  result[1] = 0;
  result[2] = 0;
  *result = 0;
  if (v2)
  {
    if (!(v2 >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_BF19F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  *(a10 + 8) = v10;
  operator delete(v10);
  _Unwind_Resume(a1);
}

uint64_t sub_BF1A90(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2671FF8;
  a2[1] = v2;
  return result;
}

uint64_t sub_BF1AD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BF1BB8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_2672078;
  a2[1] = v2;
  return result;
}

double sub_BF1BE4(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  result = *a2 / *v2;
  if (*v2 == 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_BF1C04(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_BF1CEC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_26720F8;
  a2[1] = v2;
  return result;
}

double sub_BF1D18(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  result = *a2 / *v2;
  if (*v2 == 0.0)
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_BF1D38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 sub_BF1E24(uint64_t a1, uint64_t a2)
{
  *a2 = off_2672178;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double sub_BF1E54(uint64_t a1, double *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (*v2 == *v3)
  {
    return 0.0;
  }

  else
  {
    return (*a2 - *v2) / (*v3 - *v2);
  }
}

uint64_t sub_BF1E84(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning12_GLOBAL__N_19normaliseERNS_6common13DynamicMatrixIdEENS1_15ScheduleScoring22normalisation_method_tEE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_BF1EFC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  *(a1 + 376) = *(a1 + 368);
  *(a1 + 352) = 0;
  v5 = a3[1] - *a3;
  if (v5)
  {
    v7 = 0;
    v8 = 0;
    v33 = v5 >> 4;
    do
    {
      v9 = 0;
      v10 = 16 * v8;
      v34 = v8;
      v35 = 16 * v8;
      v36 = v8 + 1;
      do
      {
        v12 = sub_A5C314((a2 + 24), *(*v3 + v10));
        if (v9 > 4u)
        {
          if (v9 <= 6u)
          {
            if (v9 == 5)
            {
              v13 = *(v12 + 32);
              v14 = *(a1 + 368);
              if (*(a1 + 352) > v8)
              {
                goto LABEL_6;
              }

LABEL_44:
              v19 = v3;
              *(a1 + 352) = v36;
              v20 = *(a1 + 360) * v36;
              v21 = *(a1 + 376);
              v22 = (v21 - v14) >> 3;
              v23 = v20 - v22;
              if (v20 <= v22)
              {
                v10 = v35;
                v3 = v19;
                if (v20 < v22)
                {
                  *(a1 + 376) = v14 + 8 * v20;
                }
              }

              else
              {
                v24 = *(a1 + 384);
                if (v23 > (v24 - v21) >> 3)
                {
                  if (!(v20 >> 61))
                  {
                    v25 = v24 - v14;
                    if (v25 >> 2 > v20)
                    {
                      v20 = v25 >> 2;
                    }

                    if (v25 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v20 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    if (!(v20 >> 61))
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  sub_1794();
                }

                bzero(*(a1 + 376), 8 * v23);
                v11 = v21 + 8 * v23;
                v8 = v34;
                v10 = v35;
                *(a1 + 376) = v11;
                v3 = v19;
              }

              goto LABEL_6;
            }

            if (v9 != 6)
            {
LABEL_66:
              exception = __cxa_allocate_exception(0x40uLL);
              v32 = sub_2D390(exception, "Requested to evaluate unknown criterion", 0x27uLL);
            }

            v13 = *(v12 + 40);
            v14 = *(a1 + 368);
            if (*(a1 + 352) <= v8)
            {
              goto LABEL_44;
            }
          }

          else
          {
            if (v9 == 7)
            {
              v13 = *(v12 + 48);
              v14 = *(a1 + 368);
              if (*(a1 + 352) > v8)
              {
                goto LABEL_6;
              }

              goto LABEL_44;
            }

            if (v9 == 8)
            {
              v13 = *(v12 + 56);
              v14 = *(a1 + 368);
              if (*(a1 + 352) > v8)
              {
                goto LABEL_6;
              }

              goto LABEL_44;
            }

            if (v9 != 9)
            {
              goto LABEL_66;
            }

            v13 = *(v12 + 64);
            v14 = *(a1 + 368);
            if (*(a1 + 352) <= v8)
            {
              goto LABEL_44;
            }
          }
        }

        else
        {
          if (v9 <= 1u)
          {
            if (!v9)
            {
              if (*v12)
              {
                v13 = 1.0;
              }

              else
              {
                v13 = 0.0;
              }

              v14 = *(a1 + 368);
              if (*(a1 + 352) > v8)
              {
                goto LABEL_6;
              }

              goto LABEL_44;
            }

            v15 = *(v12 + 4);
            goto LABEL_38;
          }

          if (v9 == 2)
          {
            v15 = *(v12 + 8);
LABEL_38:
            v16 = v15 / 10;
            v17 = v15 % 10;
            if (v15 < 0)
            {
              v18 = -5;
            }

            else
            {
              v18 = 5;
            }

            v13 = (v16 + (((103 * (v18 + v17)) >> 15) & 1) + ((103 * (v18 + v17)) >> 10));
            v14 = *(a1 + 368);
            if (*(a1 + 352) > v8)
            {
              goto LABEL_6;
            }

            goto LABEL_44;
          }

          if (v9 == 3)
          {
            v13 = *(v12 + 16);
            v14 = *(a1 + 368);
            if (*(a1 + 352) > v8)
            {
              goto LABEL_6;
            }

            goto LABEL_44;
          }

          if (v9 != 4)
          {
            goto LABEL_66;
          }

          v13 = *(v12 + 24);
          v14 = *(a1 + 368);
          if (*(a1 + 352) <= v8)
          {
            goto LABEL_44;
          }
        }

LABEL_6:
        *(v14 + v7 * *(a1 + 360) + 8 * v9++) = v13;
      }

      while (v9 != 10);
      v7 += 8;
      v8 = v36;
    }

    while (v36 != v33);
  }

  sub_BF09F8(a1 + 352, *(a1 + 168));
  sub_BF1420(&v37, (a1 + 352));
  v26 = v37;
  if (v38 == v37)
  {
    if (!v37)
    {
      return;
    }
  }

  else
  {
    v27 = (v38 - v37) >> 3;
    v28 = (*v3 + 8);
    v29 = v37;
    do
    {
      v30 = *v29++;
      *v28 = v30;
      v28 += 2;
      --v27;
    }

    while (v27);
  }

  operator delete(v26);
}

void sub_BF2368(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 368);
  *(a1 + 376) = v5;
  *(a1 + 352) = 0;
  v6 = a3[1] - *a3;
  if (v6)
  {
    v7 = 0;
    v8 = 0;
    v31 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 4);
    do
    {
      v9 = 0;
      v10 = v8 + 1;
      do
      {
        v12 = *a3 + 112 * v8;
        if (v9 > 4u)
        {
          if (v9 <= 6u)
          {
            if (v9 == 5)
            {
              v13 = *(v12 + 32);
              if (*(a1 + 352) > v8)
              {
                goto LABEL_7;
              }
            }

            else
            {
              if (v9 != 6)
              {
LABEL_67:
                exception = __cxa_allocate_exception(0x40uLL);
                v30 = sub_2D390(exception, "Requested to evaluate unknown criterion", 0x27uLL);
              }

              v13 = *(v12 + 40);
              if (*(a1 + 352) > v8)
              {
                goto LABEL_7;
              }
            }
          }

          else
          {
            switch(v9)
            {
              case 7u:
                v13 = *(v12 + 48);
                if (*(a1 + 352) > v8)
                {
                  goto LABEL_7;
                }

                break;
              case 8u:
                v13 = *(v12 + 56);
                if (*(a1 + 352) > v8)
                {
                  goto LABEL_7;
                }

                break;
              case 9u:
                v13 = *(v12 + 64);
                if (*(a1 + 352) > v8)
                {
                  goto LABEL_7;
                }

                break;
              default:
                goto LABEL_67;
            }
          }
        }

        else
        {
          if (v9 <= 1u)
          {
            if (!v9)
            {
              if (*v12)
              {
                v13 = 1.0;
              }

              else
              {
                v13 = 0.0;
              }

              if (*(a1 + 352) > v8)
              {
                goto LABEL_7;
              }

              goto LABEL_45;
            }

            v14 = *(v12 + 4);
          }

          else
          {
            if (v9 != 2)
            {
              if (v9 == 3)
              {
                v13 = *(v12 + 16);
                if (*(a1 + 352) > v8)
                {
                  goto LABEL_7;
                }
              }

              else
              {
                if (v9 != 4)
                {
                  goto LABEL_67;
                }

                v13 = *(v12 + 24);
                if (*(a1 + 352) > v8)
                {
                  goto LABEL_7;
                }
              }

              goto LABEL_45;
            }

            v14 = *(v12 + 8);
          }

          v15 = v14 / 10;
          v16 = v14 % 10;
          if (v14 < 0)
          {
            v17 = -5;
          }

          else
          {
            v17 = 5;
          }

          v13 = (v15 + (((103 * (v17 + v16)) >> 15) & 1) + ((103 * (v17 + v16)) >> 10));
          if (*(a1 + 352) > v8)
          {
            goto LABEL_7;
          }
        }

LABEL_45:
        *(a1 + 352) = v10;
        v18 = *(a1 + 360) * v10;
        v19 = *(a1 + 376);
        v20 = (v19 - v5) >> 3;
        v21 = v18 - v20;
        if (v18 > v20)
        {
          v22 = *(a1 + 384);
          if (v21 > (v22 - v19) >> 3)
          {
            if (!(v18 >> 61))
            {
              v23 = v22 - v5;
              if (v23 >> 2 > v18)
              {
                v18 = v23 >> 2;
              }

              if (v23 >= 0x7FFFFFFFFFFFFFF8)
              {
                v18 = 0x1FFFFFFFFFFFFFFFLL;
              }

              if (!(v18 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            sub_1794();
          }

          bzero(*(a1 + 376), 8 * v21);
          v10 = v8 + 1;
          v11 = v19 + 8 * v21;
          goto LABEL_6;
        }

        if (v18 < v20)
        {
          v11 = v5 + 8 * v18;
LABEL_6:
          *(a1 + 376) = v11;
        }

LABEL_7:
        *(v5 + v7 * *(a1 + 360) + 8 * v9++) = v13;
      }

      while (v9 != 10);
      v7 += 8;
      v8 = v10;
    }

    while (v10 != v31);
  }

  sub_BF09F8(a1 + 352, *(a1 + 256));
  sub_BF1420(&v32, (a1 + 352));
  v24 = v32;
  if (v33 == v32)
  {
    if (!v32)
    {
      return;
    }
  }

  else
  {
    v25 = (v33 - v32) >> 3;
    v26 = (*a3 + 72);
    v27 = v32;
    do
    {
      v28 = *v27++;
      *v26 = v28;
      v26 += 14;
      --v25;
    }

    while (v25);
  }

  operator delete(v24);
}

uint64_t sub_BF27A0(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v27 = a4;
  sub_BF2C88(a1, a2, &v27, v30);
  v6 = a3[6];
  v5 = a3[7];
  if (v5 != v6)
  {
    if (!((0xEF7BDEF7BDEF7BDFLL * ((v5 - v6) >> 3)) >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  v7 = v31;
  if (!v31)
  {
    goto LABEL_7;
  }

  if (v31 != v30)
  {
    v7 = (*(*v31 + 16))(v31);
LABEL_7:
    v33 = v7;
    goto LABEL_9;
  }

  v33 = v32;
  (*(*v31 + 24))(v31, v32);
LABEL_9:
  v28 = v6;
  v8 = 0xEF7BDEF7BDEF7BDFLL * ((v5 - v6) >> 3);
  if (v5 == v6)
  {
    goto LABEL_16;
  }

  v9 = 0xBDEF7BDEF7BDEF7CLL * ((v5 - v6) >> 3) - 4;
  if (v9 < 0x1C)
  {
    LODWORD(v10) = 0;
    v11 = 0;
    do
    {
LABEL_15:
      *v11 = v10;
      v11 += 4;
      LODWORD(v10) = v10 + 1;
    }

    while (v11 != 0xBDEF7BDEF7BDEF7CLL * ((v5 - v6) >> 3));
    goto LABEL_16;
  }

  v12 = (v9 >> 2) + 1;
  v10 = v12 & 0x7FFFFFFFFFFFFFF8;
  v11 = 4 * (v12 & 0x7FFFFFFFFFFFFFF8);
  v13 = xmmword_2263900;
  v14 = dword_10;
  v15.i64[0] = 0x400000004;
  v15.i64[1] = 0x400000004;
  v16.i64[0] = 0x800000008;
  v16.i64[1] = 0x800000008;
  v17 = v12 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v14[-1] = v13;
    *v14 = vaddq_s32(v13, v15);
    v13 = vaddq_s32(v13, v16);
    v14 += 2;
    v17 -= 8;
  }

  while (v17);
  if (v12 != v10)
  {
    goto LABEL_15;
  }

LABEL_16:
  v29[0] = v32;
  v29[1] = &v28;
  if (v5 - v6 < 31745)
  {
    v19 = 0;
    v20 = 0;
  }

  else
  {
    v18 = 0xEF7BDEF7BDEF7BDFLL * ((v5 - v6) >> 3);
    while (1)
    {
      v19 = operator new(4 * v18, &std::nothrow);
      if (v19)
      {
        break;
      }

      v20 = v18 >> 1;
      v21 = v18 > 1;
      v18 >>= 1;
      if (!v21)
      {
        goto LABEL_23;
      }
    }

    v20 = v18;
  }

LABEL_23:
  sub_BF5410(0, (4 * v8), v29, v8, v19, v20);
  if (v19)
  {
    operator delete(v19);
  }

  if (v33 == v32)
  {
    (*(*v33 + 32))(v33);
  }

  else if (v33)
  {
    (*(*v33 + 40))();
  }

  sub_BF51E0(a3[6], a3[7], 0);
  v22 = a3[3];
  v23 = a3[4];
  while (v22 != v23)
  {
    v24 = *(v22 + 72);
    for (i = *(v22 + 80); v24 != i; v24 += 4)
    {
      *v24 = *(4 * *v24);
    }

    v22 += 160;
  }

  result = v31;
  if (v31 == v30)
  {
    return (*(*v31 + 32))(v31);
  }

  if (v31)
  {
    return (*(*v31 + 40))();
  }

  return result;
}

uint64_t sub_BF2C88@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (!*a3)
  {
    sub_BF4878(result, a2, &__p);
    *v12 = 0u;
    *v13 = 0u;
    v14 = 1065353216;
    v5 = __p;
    if (v11 != __p)
    {
      v6 = 0;
      v7 = 0;
      v8 = (v11 - __p) >> 3;
      do
      {
        v15 = v7;
        sub_A6BEC4(v12, (__p + v6));
        ++v7;
        v6 += 8;
      }

      while (v8 != v7);
      v5 = __p;
    }

    if (v5)
    {
      v11 = v5;
      operator delete(v5);
    }

    sub_BF4B50(&v9, v12);
    *(a4 + 24) = 0;
    operator new();
  }

  *(a4 + 24) = 0;
  return result;
}

void sub_BF2E04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  operator delete(v19);
  sub_BF4C94(&a10);
  sub_11BD8(&a19);
  _Unwind_Resume(a1);
}

void sub_BF2E38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  sub_11BD8(&a19);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_BF2E64(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_BF2EF0(uint64_t a1, uint64_t a2, uint64_t *a3, char a4)
{
  v56 = a4;
  sub_BF3550(a1, a2, &v56, v65);
  v6 = a3[3];
  v5 = a3[4];
  if (v5 != v6)
  {
    if (!((0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 5)) >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  v7 = v66;
  if (!v66)
  {
    goto LABEL_7;
  }

  if (v66 != v65)
  {
    v7 = (*(*v66 + 16))(v66);
LABEL_7:
    v68 = v7;
    goto LABEL_9;
  }

  v68 = v67;
  (*(*v66 + 24))(v66, v67);
LABEL_9:
  *&v57 = v6;
  v8 = (v5 - v6) >> 5;
  v9 = 0xCCCCCCCCCCCCCCCDLL * v8;
  v10 = (0x3333333333333334 * v8);
  if (v5 == v6)
  {
    goto LABEL_16;
  }

  v11 = 0x3333333333333334 * v8 - 4;
  if (v11 < 0x1C)
  {
    LODWORD(v12) = 0;
    v13 = 0;
    do
    {
LABEL_15:
      *v13++ = v12;
      LODWORD(v12) = v12 + 1;
    }

    while (v13 != v10);
    goto LABEL_16;
  }

  v14 = (v11 >> 2) + 1;
  v12 = v14 & 0x7FFFFFFFFFFFFFF8;
  v13 = (4 * (v14 & 0x7FFFFFFFFFFFFFF8));
  v15 = xmmword_2263900;
  v16 = dword_10;
  v17.i64[0] = 0x400000004;
  v17.i64[1] = 0x400000004;
  v18.i64[0] = 0x800000008;
  v18.i64[1] = 0x800000008;
  v19 = v14 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v16[-1] = v15;
    *v16 = vaddq_s32(v15, v17);
    v15 = vaddq_s32(v15, v18);
    v16 += 2;
    v19 -= 8;
  }

  while (v19);
  if (v14 != v12)
  {
    goto LABEL_15;
  }

LABEL_16:
  *&v60 = v67;
  *(&v60 + 1) = &v57;
  if (v5 - v6 <= 20480)
  {
    v21 = 0;
    v22 = 0;
  }

  else
  {
    v20 = v9;
    while (1)
    {
      v21 = operator new(4 * v20, &std::nothrow);
      if (v21)
      {
        break;
      }

      v22 = v20 >> 1;
      v23 = v20 > 1;
      v20 >>= 1;
      if (!v23)
      {
        goto LABEL_23;
      }
    }

    v22 = v20;
  }

LABEL_23:
  sub_BF6604(0, v10, &v60, v9, v21, v22);
  if (v21)
  {
    operator delete(v21);
  }

  if (v68 == v67)
  {
    (*(*v68 + 32))(v68);
  }

  else if (v68)
  {
    (*(*v68 + 40))();
  }

  v24 = a3[3];
  v25 = a3[4] - v24;
  if (v25 >= 160)
  {
    v33 = 0;
    v34 = 0xCCCCCCCCCCCCCCCDLL * (v25 >> 5);
    do
    {
      v36 = (4 * v33);
      v37 = *(4 * v33);
      if (v37 == v33)
      {
        LODWORD(v35) = v33;
      }

      else
      {
        v38 = v24 + 160 * v33;
        v39 = *(v38 + 72);
        v40 = *(v38 + 88);
        v35 = v33;
        do
        {
          v41 = v35;
          v35 = v37;
          v42 = (v24 + 160 * v41);
          v43 = (v24 + 160 * v37);
          v61 = v42[1];
          v62 = v42[2];
          v63 = v42[3];
          v64 = *(v42 + 8);
          v60 = *v42;
          *(v42 + 10) = 0;
          *(v42 + 11) = 0;
          *(v42 + 9) = 0;
          v57 = v42[6];
          v58 = v42[7];
          v59[0] = v42[8];
          *(v59 + 14) = *(v42 + 142);
          *v42 = *v43;
          v44 = v43[1];
          v45 = v43[2];
          v46 = v43[3];
          *(v42 + 8) = *(v43 + 8);
          v42[2] = v45;
          v42[3] = v46;
          v42[1] = v44;
          *(v42 + 72) = *(v43 + 72);
          *(v42 + 11) = *(v43 + 11);
          v47 = v43[6];
          v48 = v43[7];
          v49 = v43[8];
          *(v42 + 142) = *(v43 + 142);
          v42[7] = v48;
          v42[8] = v49;
          v42[6] = v47;
          *v43 = v60;
          v50 = v61;
          v51 = v62;
          v52 = v63;
          *(v43 + 8) = v64;
          v43[2] = v51;
          v43[3] = v52;
          v43[1] = v50;
          *(v43 + 72) = v39;
          *(v43 + 11) = v40;
          v53 = v57;
          v54 = v58;
          v55 = v59[0];
          *(v43 + 142) = *(v59 + 14);
          v43[7] = v54;
          v43[8] = v55;
          v43[6] = v53;
          *(4 * v41) = v41;
          v36 = (4 * v35);
          v37 = *(4 * v35);
        }

        while (v37 != v33);
      }

      *v36 = v35;
      ++v33;
    }

    while (v34 != v33);
    operator delete(0);
  }

  v26 = *a3;
  v27 = a3[1];
  while (v26 != v27)
  {
    v28 = *(v26 + 80);
    v29 = *(v26 + 88);
    while (v28 != v29)
    {
      v30 = *(v28 + 80);
      for (i = *(v28 + 88); v30 != i; v30 += 4)
      {
        *v30 = *(4 * *v30);
      }

      v28 += 112;
    }

    v26 += 112;
  }

  result = v66;
  if (v66 == v65)
  {
    return (*(*v66 + 32))(v66);
  }

  if (v66)
  {
    return (*(*v66 + 40))();
  }

  return result;
}

uint64_t sub_BF3550@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  if (!*a3)
  {
    sub_BF4878(result, a2, &__p);
    *v12 = 0u;
    *v13 = 0u;
    v14 = 1065353216;
    v5 = __p;
    if (v11 != __p)
    {
      v6 = 0;
      v7 = 0;
      v8 = (v11 - __p) >> 3;
      do
      {
        v15 = v7;
        sub_A6BEC4(v12, (__p + v6));
        ++v7;
        v6 += 8;
      }

      while (v8 != v7);
      v5 = __p;
    }

    if (v5)
    {
      v11 = v5;
      operator delete(v5);
    }

    sub_BF4B50(&v9, v12);
    *(a4 + 24) = 0;
    operator new();
  }

  *(a4 + 24) = 0;
  return result;
}

void sub_BF36CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  operator delete(v19);
  sub_BF4C94(&a10);
  sub_11BD8(&a19);
  _Unwind_Resume(a1);
}

void sub_BF3700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  sub_11BD8(&a19);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_BF372C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t (***sub_BF37B8(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, int a5))()
{
  if (a5 == 1)
  {
    result = &v9;
    v9 = off_26723A8;
    v10 = a4;
    v11 = a1;
    v12 = &v9;
    v7 = *(a4 + 24);
    v8 = *(a4 + 32);
    if (v7 == v8)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  if (a5)
  {
    result = 0;
    v12 = 0;
    v7 = *(a4 + 24);
    v8 = *(a4 + 32);
    if (v7 == v8)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_10:
      sub_BF3928((v7 + 72), &v9, a2);
      v7 += 160;
    }

    while (v7 != v8);
    result = v12;
    if (v12 != &v9)
    {
      goto LABEL_7;
    }

    return ((*result)[4])(result);
  }

  result = &v9;
  v9 = off_2672318;
  v10 = a4;
  v11 = a1;
  v12 = &v9;
  v7 = *(a4 + 24);
  v8 = *(a4 + 32);
  if (v7 != v8)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (result == &v9)
  {
    return ((*result)[4])(result);
  }

LABEL_7:
  if (result)
  {
    return ((*result)[5])(result);
  }

  return result;
}

void sub_BF3914(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BF3B04(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BF3928(__int128 **a1, uint64_t a2, __n128 a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      v14 = v13;
      (*(*v5 + 24))(v5, v13);
    }

    else
    {
      v14 = (*(*v5 + 16))(v5);
    }
  }

  else
  {
    v14 = 0;
  }

  if (v4 - v3 < 129)
  {
    v10 = 0;
    v6 = 0;
  }

  else
  {
    v6 = v4 - v3;
    while (1)
    {
      v7 = operator new(16 * v6, &std::nothrow);
      if (v7)
      {
        break;
      }

      v8 = v6 >> 1;
      v9 = v6 > 1;
      v6 >>= 1;
      if (!v9)
      {
        v10 = 0;
        v6 = v8;
        goto LABEL_13;
      }
    }

    v10 = v7;
  }

LABEL_13:
  v11.n128_f64[0] = sub_BF763C(v3, v4, v13, v4 - v3, v10, v6, a3);
  if (v10)
  {
    operator delete(v10);
  }

  result = v14;
  if (v14 == v13)
  {
    return (*(*v14 + 32))(v14, v11);
  }

  if (v14)
  {
    return (*(*v14 + 40))(v11);
  }

  return result;
}

void sub_BF3AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  sub_BF3B04(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_BF3B04(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_BF3B90(uint64_t result, uint64_t a2, uint64_t *a3, char a4)
{
  v20 = result;
  v21 = a4;
  v4 = *a3;
  v18 = a3[1];
  if (*a3 != v18)
  {
    while (1)
    {
      v7 = *(v4 + 80);
      v6 = *(v4 + 88);
      v19 = v4;
      if (v7 != v6)
      {
        break;
      }

LABEL_3:
      v4 = v19 + 112;
      if (v19 + 112 == v18)
      {
        return result;
      }
    }

    while (1)
    {
      sub_BF3E70(v20, a3, v7, &v21, v22);
      v9 = *(v7 + 80);
      v10 = *(v7 + 88);
      v11 = v23;
      if (v23)
      {
        if (v23 == v22)
        {
          v25 = v24;
          (*(*v23 + 24))();
          goto LABEL_12;
        }

        v11 = (*(*v23 + 16))();
      }

      v25 = v11;
LABEL_12:
      if (v10 - v9 < 129)
      {
        v16 = 0;
        v12 = 0;
      }

      else
      {
        v12 = v10 - v9;
        while (1)
        {
          v13 = operator new(16 * v12, &std::nothrow);
          if (v13)
          {
            break;
          }

          v14 = v12 >> 1;
          v15 = v12 > 1;
          v12 >>= 1;
          if (!v15)
          {
            v16 = 0;
            v12 = v14;
            goto LABEL_19;
          }
        }

        v16 = v13;
      }

LABEL_19:
      v17.n128_f64[0] = sub_BF8344(v9, v10, v24, v10 - v9, v16, v12, v8);
      if (v16)
      {
        operator delete(v16);
      }

      if (v25 == v24)
      {
        (*(*v25 + 32))(v25, v17);
        result = v23;
        if (v23 != v22)
        {
          goto LABEL_27;
        }

LABEL_6:
        result = (*(*result + 32))(result);
        v7 += 112;
        if (v7 == v6)
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v25)
        {
          (*(*v25 + 40))(v17);
        }

        result = v23;
        if (v23 == v22)
        {
          goto LABEL_6;
        }

LABEL_27:
        if (result)
        {
          result = (*(*result + 40))(result, v17);
        }

        v7 += 112;
        if (v7 == v6)
        {
          goto LABEL_3;
        }
      }
    }
  }

  return result;
}

void sub_BF3E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_BF4098(va);
  _Unwind_Resume(a1);
}

void sub_BF3E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (v18)
  {
    operator delete(v18);
  }

  sub_BF4098(&a18);
  sub_BF4098(&a14);
  _Unwind_Resume(a1);
}

_DWORD *sub_BF3E70@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, void *a5@<X8>)
{
  if (*a4 == 1)
  {
    sub_BF4CE0(result, a2, a3, &__p);
    *v13 = 0u;
    *v14 = 0u;
    v15 = 1065353216;
    v6 = __p;
    if (v12 != __p)
    {
      v7 = 0;
      v8 = 0;
      v9 = (v12 - __p) >> 3;
      do
      {
        v16 = v8;
        sub_A6BEC4(v13, (__p + v7));
        ++v8;
        v7 += 8;
      }

      while (v9 != v8);
      v6 = __p;
    }

    if (v6)
    {
      v12 = v6;
      operator delete(v6);
    }

    sub_BF4B50(&v10, v13);
    a5[3] = 0;
    operator new();
  }

  if (*a4)
  {
    a5[3] = 0;
  }

  else
  {
    *a5 = off_2672428;
    a5[3] = a5;
  }

  return result;
}

void sub_BF4038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  operator delete(v19);
  sub_BF4FA4(&a9);
  sub_11BD8(&a19);
  _Unwind_Resume(a1);
}

void sub_BF406C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19)
{
  sub_11BD8(&a19);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_BF4098(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void *sub_BF4124(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (a4)
  {
    result = 0;
    v8 = 0;
    v5 = *a3;
    v6 = a3[1];
    if (*a3 == v6)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_7:
      sub_BF4254((v5 + 80), v7);
      v5 += 112;
    }

    while (v5 != v6);
    result = v8;
    if (v8 != v7)
    {
      goto LABEL_4;
    }

    return (*(*result + 32))(result);
  }

  result = v7;
  v7[0] = off_2672538;
  v8 = v7;
  v5 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (result == v7)
  {
    return (*(*result + 32))(result);
  }

LABEL_4:
  if (result)
  {
    return (*(*result + 40))(result);
  }

  return result;
}

void sub_BF4240(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BF4448(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BF4254(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      v12 = v11;
      (*(*v4 + 24))(v4, v11);
    }

    else
    {
      v12 = (*(*v4 + 16))(v4);
    }
  }

  else
  {
    v12 = 0;
  }

  if (v3 - v2 < 1)
  {
    v9 = 0;
    v5 = 0;
  }

  else
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v3 - v2) >> 4);
    while (1)
    {
      v6 = operator new(112 * v5, &std::nothrow);
      if (v6)
      {
        break;
      }

      v7 = v5 >> 1;
      v8 = v5 > 1;
      v5 >>= 1;
      if (!v8)
      {
        v9 = 0;
        v5 = v7;
        goto LABEL_13;
      }
    }

    v9 = v6;
  }

LABEL_13:
  sub_BF904C(v2, v3, v11, 0x6DB6DB6DB6DB6DB7 * ((v3 - v2) >> 4), v9, v5);
  if (v9)
  {
    operator delete(v9);
  }

  result = v12;
  if (v12 == v11)
  {
    return (*(*v12 + 32))(v12);
  }

  if (v12)
  {
    return (*(*v12 + 40))();
  }

  return result;
}

void sub_BF4428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  sub_BF4448(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_BF4448(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_BF44D4(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  if (a4 == 1)
  {
    v4 = off_2672658;
    goto LABEL_5;
  }

  if (!a4)
  {
    v4 = off_26725C8;
LABEL_5:
    v7[0] = v4;
    v5 = v7;
    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:
  v8 = v5;
  sub_BF4604(a3, v7);
  result = v8;
  if (v8 == v7)
  {
    return (*(*v8 + 32))(v8);
  }

  if (v8)
  {
    return (*(*v8 + 40))();
  }

  return result;
}

void sub_BF45F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BF47EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_BF4604(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      v12 = v11;
      (*(*v4 + 24))(v4, v11);
    }

    else
    {
      v12 = *(a2 + 24);
      *(a2 + 24) = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v3 - v2 < 1)
  {
    v9 = 0;
    v5 = 0;
  }

  else
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v3 - v2) >> 4);
    while (1)
    {
      v6 = operator new(112 * v5, &std::nothrow);
      if (v6)
      {
        break;
      }

      v7 = v5 >> 1;
      v8 = v5 > 1;
      v5 >>= 1;
      if (!v8)
      {
        v9 = 0;
        v5 = v7;
        goto LABEL_13;
      }
    }

    v9 = v6;
  }

LABEL_13:
  sub_BFACF0(v2, v3, v11, 0x6DB6DB6DB6DB6DB7 * ((v3 - v2) >> 4), v9, v5);
  if (v9)
  {
    operator delete(v9);
  }

  result = v12;
  if (v12 == v11)
  {
    return (*(*v12 + 32))(v12);
  }

  if (v12)
  {
    return (*(*v12 + 40))();
  }

  return result;
}

void sub_BF47BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_4A48(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BF47EC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

void sub_BF4878(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 24);
  if (v4 <= 2)
  {
    if (v4)
    {
      if (v4 != 1)
      {
        if (v4 == 2)
        {
          v5 = sub_93D2F4(*(*a1 + 4040) + 24, __ROR8__(*(a2 + 16), 32), 0, "hall");
          v6 = (v5 - *v5);
          if (*v6 < 0xFu)
          {
            goto LABEL_15;
          }

          goto LABEL_13;
        }

        goto LABEL_21;
      }

      v5 = sub_502FF8(*(*a1 + 4120) + 24, __ROR8__(*(a2 + 16), 32), 0, "stop");
      v6 = (v5 - *v5);
      if (*v6 < 0xFu)
      {
        goto LABEL_15;
      }

LABEL_13:
      v7 = v6[7];
      if (v7)
      {
        v8 = (v5 + v7 + *(v5 + v7));
LABEL_16:
        sub_BF50FC(v8, a3);
        return;
      }

LABEL_15:
      v8 = 0;
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  if (v4 == 3)
  {
    v5 = sub_93D480(*(*a1 + 4112) + 24, __ROR8__(*(a2 + 16), 32), 0, "station");
    v6 = (v5 - *v5);
    if (*v6 < 0xFu)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  if (v4 != 4 || (v9 = sub_503310(*(*a1 + 4008) + 24, __ROR8__(*(a2 + 16), 32), 0, "access point"), v10 = (v9 - *v9), *v10 < 0x11u) || !v10[8])
  {
LABEL_21:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  if (*(v9 + v10[8] + *(v9 + v10[8])))
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

uint64_t sub_BF4B50(uint64_t a1, uint64_t a2)
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
    sub_BFCD1C(a1, i + 2);
  }

  return a1;
}

uint64_t sub_BF4C94(uint64_t a1)
{
  v2 = *(a1 + 24);
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

  v4 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

_DWORD *sub_BF4CE0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = result;
  v7 = *(a3 + 80);
  if (v7 == *(a3 + 88))
  {
    v15 = 0xFFFFFFFFLL;
    v16 = *(a3 + 104);
    if (v16 <= 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = *result;
    v9 = sub_A5C314((a2 + 24), *v7);
    v10 = *(v9 + 144);
    v11 = sub_A57920((v8 + 4136), *(v9 + 124));
    v12 = (v11 - *v11);
    if (*v12 >= 9u && (v13 = v12[4]) != 0)
    {
      v14 = (v11 + v13 + *(v11 + v13));
    }

    else
    {
      v14 = 0;
    }

    result = sub_A571D4(v14, v10);
    v15 = __ROR8__(*result, 32);
    v16 = *(a3 + 104);
    if (v16 <= 1)
    {
LABEL_7:
      if (!v16)
      {
        v25 = sub_502FF8(*(*v5 + 4120) + 24, __ROR8__(v15, 32), 0, "stop");
        v26 = (v25 - *v25);
        if (*v26 >= 0xDu && (v27 = v26[6]) != 0)
        {
          v28 = *(v25 + v27 + 4) | (*(v25 + v27) << 32);
        }

        else
        {
          v28 = 0xFFFFFFFFLL;
        }

        v32 = sub_93D480(*(*v5 + 4112) + 24, __ROR8__(v28, 32), 0, "station");
        v33 = (v32 - *v32);
        if (*v33 >= 0xFu && (v34 = v33[7]) != 0)
        {
          v24 = (v32 + v34 + *(v32 + v34));
        }

        else
        {
          v24 = 0;
        }

        return sub_BF50FC(v24, a4);
      }

      if (v16 == 1)
      {
        v17 = sub_502FF8(*(*v5 + 4120) + 24, __ROR8__(v15, 32), 0, "stop");
        v18 = (v17 - *v17);
        if (*v18 >= 0xBu && (v19 = v18[5]) != 0)
        {
          v20 = *(v17 + v19 + 4) | (*(v17 + v19) << 32);
        }

        else
        {
          v20 = 0xFFFFFFFFLL;
        }

        v29 = sub_93D2F4(*(*v5 + 4040) + 24, __ROR8__(v20, 32), 0, "hall");
        v30 = (v29 - *v29);
        if (*v30 >= 0xFu && (v31 = v30[7]) != 0)
        {
          v24 = (v29 + v31 + *(v29 + v31));
        }

        else
        {
          v24 = 0;
        }

        return sub_BF50FC(v24, a4);
      }

LABEL_17:
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      return result;
    }
  }

  if (v16 != 2)
  {
    goto LABEL_17;
  }

  v21 = sub_502FF8(*(*v5 + 4120) + 24, __ROR8__(v15, 32), 0, "stop");
  v22 = (v21 - *v21);
  if (*v22 >= 0xFu && (v23 = v22[7]) != 0)
  {
    v24 = (v21 + v23 + *(v21 + v23));
  }

  else
  {
    v24 = 0;
  }

  return sub_BF50FC(v24, a4);
}

uint64_t sub_BF4FA4(uint64_t a1)
{
  v2 = *(a1 + 32);
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

  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_BF4FF0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 48);
  v5 = sub_A57920((*a1 + 4136), *(a3 + 28));
  v6 = (v5 - *v5);
  v7 = *v6;
  if (v7 < 5)
  {
    v8 = 0;
    goto LABEL_6;
  }

  if (!v6[2])
  {
    v8 = 0;
    if (v7 >= 9)
    {
      goto LABEL_12;
    }

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = v5 + v6[2] + *(v5 + v6[2]);
  if (v7 < 9)
  {
    goto LABEL_6;
  }

LABEL_12:
  v12 = v6[4];
  if (!v12)
  {
    goto LABEL_6;
  }

  v9 = (v5 + v12 + *(v5 + v12));
LABEL_7:
  v13 = __ROR8__(*&v8[8 * *(sub_A571D4(v9, v4) + 14) + 4], 32);
  if (!sub_A794D0(a2, &v13))
  {
    return -1;
  }

  v10 = sub_A794D0(a2, &v13);
  if (!v10)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  return v10[3];
}

_DWORD *sub_BF50FC@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  if (result && *result)
  {
    operator new();
  }

  *a2 = 0u;
  *(a2 + 16) = 0;
  return result;
}

void sub_BF51C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_BF51E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 - result >= 248)
  {
    v3 = 0;
    v4 = 0xEF7BDEF7BDEF7BDFLL * ((a2 - result) >> 3);
    do
    {
      v6 = (a3 + 4 * v3);
      v7 = *v6;
      if (v7 == v3)
      {
        LODWORD(v5) = v3;
      }

      else
      {
        v8 = result + 248 * v3;
        v9 = *(v8 + 224);
        v10 = *(v8 + 240);
        v11 = *(v8 + 72);
        v12 = *(v8 + 88);
        v13 = *(v8 + 104);
        v14 = *(v8 + 184);
        v15 = *(v8 + 200);
        v5 = v3;
        do
        {
          v16 = v5;
          v17 = (result + 248 * v5);
          v5 = v7;
          v32 = v17[2];
          v33 = v17[3];
          v18 = (result + 248 * v7);
          v34 = *(v17 + 8);
          v20 = *v17;
          v19 = v17[1];
          *(v17 + 25) = 0;
          v36 = *(v17 + 54);
          v35 = *(v17 + 26);
          *v17 = *v18;
          v21 = v18[1];
          v22 = v18[2];
          v23 = v18[3];
          *(v17 + 8) = *(v18 + 8);
          v24 = *(v18 + 25);
          v25 = *(v18 + 26);
          *(v17 + 54) = *(v18 + 54);
          v30 = v20;
          v31 = v19;
          *(v17 + 72) = 0uLL;
          *(v17 + 88) = 0uLL;
          *(v17 + 104) = 0uLL;
          *&v39[13] = *(v17 + 165);
          *v39 = *(v17 + 152);
          v37 = *(v17 + 120);
          v38 = *(v17 + 136);
          *(v17 + 23) = 0;
          *(v17 + 24) = 0;
          *(v17 + 29) = 0;
          *(v17 + 30) = 0;
          *(v17 + 28) = 0;
          v17[2] = v22;
          v17[3] = v23;
          v17[1] = v21;
          *(v17 + 72) = *(v18 + 72);
          *(v17 + 88) = *(v18 + 88);
          *(v17 + 104) = *(v18 + 104);
          v26 = *(v18 + 120);
          v27 = *(v18 + 136);
          v28 = *(v18 + 152);
          *(v17 + 165) = *(v18 + 165);
          *(v17 + 152) = v28;
          *(v17 + 136) = v27;
          *(v17 + 120) = v26;
          *(v17 + 184) = *(v18 + 184);
          *(v17 + 25) = v24;
          *(v17 + 26) = v25;
          v29 = *(v18 + 30);
          v17[14] = v18[14];
          *(v17 + 30) = v29;
          *(v18 + 8) = v34;
          v18[2] = v32;
          v18[3] = v33;
          *v18 = v30;
          v18[1] = v31;
          *(v18 + 72) = v11;
          *(v18 + 88) = v12;
          *(v18 + 104) = v13;
          *(v18 + 165) = *&v39[13];
          *(v18 + 152) = *v39;
          *(v18 + 136) = v38;
          *(v18 + 120) = v37;
          *(v18 + 184) = v14;
          *(v18 + 54) = v36;
          *(v18 + 25) = v15;
          *(v18 + 26) = v35;
          v18[14] = v9;
          *(v18 + 30) = v10;
          *(a3 + 4 * v16) = v16;
          v6 = (a3 + 4 * v5);
          v7 = *v6;
        }

        while (v7 != v3);
      }

      *v6 = v5;
      ++v3;
    }

    while (v4 != v3);
  }

  return result;
}

unsigned int *sub_BF5410(unsigned int *result, unsigned int *a2, uint64_t *a3, unint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v7 = result;
    if (a4 == 2)
    {
      v8 = *(*a3 + 24);
      if (!v8)
      {
LABEL_46:
        sub_2B7420();
      }

      result = (*(*v8 + 48))(v8, *a3[1] + 248 * *(a2 - 1), *a3[1] + 248 * *v7);
      if (result)
      {
        v10 = *v7;
        *v7 = *(a2 - 1);
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v13 = a4 >> 1;
      v14 = a4 >> 1;
      v15 = a4 - (a4 >> 1);
      v16 = &result[v14];
      if (a4 <= a6)
      {
        sub_BF58E8(result, v16, a3, a4 >> 1, a5);
        v19 = &a5[v13];
        result = sub_BF58E8(&v7[v14], a2, a3, v15, v19);
        v20 = v19;
        v21 = a5;
        v22 = v7;
        v23 = &a5[a4];
        do
        {
          if (v20 == v23)
          {
            if (v21 == v19)
            {
              return result;
            }

            v37 = &a5[v14] - v21 - 4;
            if (v37 >= 0x1C)
            {
              if ((v7 - v21) >= 0x20)
              {
                v39 = v22 + 4;
                v40 = (v37 >> 2) + 1;
                v41 = v40 & 0x7FFFFFFFFFFFFFF8;
                v38 = &v21[v41];
                v22 = (v22 + v41 * 4);
                v42 = (v21 + 4);
                v43 = v40 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v44 = *v42;
                  *(v39 - 1) = *(v42 - 1);
                  *v39 = v44;
                  v39 += 2;
                  v42 += 2;
                  v43 -= 8;
                }

                while (v43);
                if (v40 == (v40 & 0x7FFFFFFFFFFFFFF8))
                {
                  return result;
                }
              }

              else
              {
                v38 = v21;
              }
            }

            else
            {
              v38 = v21;
            }

            do
            {
              v45 = *v38++;
              *v22++ = v45;
            }

            while (v38 != v19);
            return result;
          }

          v24 = v20;
          v25 = *(*a3 + 24);
          if (!v25)
          {
            goto LABEL_46;
          }

          result = (*(*v25 + 48))(v25, *a3[1] + 248 * *v20, *a3[1] + 248 * *v21);
          if (result)
          {
            v26 = v24;
          }

          else
          {
            v26 = v21;
          }

          if (result)
          {
            v27 = 0;
          }

          else
          {
            v27 = 4;
          }

          v21 = (v21 + v27);
          if (result)
          {
            v28 = 1;
          }

          else
          {
            v28 = 0;
          }

          v20 = &v24[v28];
          *v22++ = *v26;
          ++v7;
        }

        while (v21 != v19);
        if (v20 != v23)
        {
          v29 = v23 - v24 - v28 * 4 - 4;
          if (v29 <= 0x2B)
          {
            goto LABEL_49;
          }

          if ((v7 - v24 - v28 * 4) < 0x20)
          {
            goto LABEL_49;
          }

          v30 = v22 + 4;
          v31 = (v29 >> 2) + 1;
          v32 = 4 * (v31 & 0x7FFFFFFFFFFFFFF8);
          v20 = (v20 + v32);
          v22 = (v22 + v32);
          v33 = &v24[v28 + 4];
          v34 = v31 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v35 = *v33;
            *(v30 - 1) = *(v33 - 1);
            *v30 = v35;
            v30 += 2;
            v33 += 8;
            v34 -= 8;
          }

          while (v34);
          if (v31 != (v31 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_49:
            do
            {
              v36 = *v20++;
              *v22++ = v36;
            }

            while (v20 != v23);
          }
        }
      }

      else
      {
        sub_BF5410(result, v16, a3, a4 >> 1, a5, a6);
        sub_BF5410(&v7[v14], a2, a3, v15, a5, a6);

        return sub_BF5C00(v7, &v7[v14], a2, a3, v13, v15, a5, a6);
      }
    }

    else
    {

      return sub_BF57A0(result, a2, a3);
    }
  }

  return result;
}

uint64_t sub_BF57A0(uint64_t result, unsigned int *a2, void **a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 4);
    if ((result + 4) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = v5;
        v11 = (*a3)[3];
        if (!v11)
        {
LABEL_15:
          sub_2B7420();
        }

        result = (*(*v11 + 48))(v11, *a3[1] + 248 * *v5, *a3[1] + 248 * *v8);
        if (result)
        {
          v12 = *v10;
          v13 = v7;
          do
          {
            *(v4 + v13 + 4) = *(v4 + v13);
            if (!v13)
            {
              v9 = v4;
              goto LABEL_5;
            }

            v14 = (*a3)[3];
            if (!v14)
            {
              goto LABEL_15;
            }

            result = (*(*v14 + 48))(v14, *a3[1] + 248 * v12, *a3[1] + 248 * *(v4 + v13 - 4));
            v13 -= 4;
          }

          while ((result & 1) != 0);
          v9 = (v4 + v13 + 4);
LABEL_5:
          *v9 = v12;
        }

        v5 = v10 + 1;
        v7 += 4;
        v8 = v10;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

unsigned int *sub_BF58E8(unsigned int *result, unsigned int *a2, void **a3, uint64_t a4, unsigned int *a5)
{
  if (a4)
  {
    v5 = a5;
    v8 = result;
    if (a4 == 2)
    {
      v9 = (*a3)[3];
      if (!v9)
      {
LABEL_46:
        sub_2B7420();
      }

      result = (*(*v9 + 48))(v9, *a3[1] + 248 * *(a2 - 1), *a3[1] + 248 * *v8);
      if (result)
      {
        *v5 = *(a2 - 1);
        v10 = *v8;
      }

      else
      {
        *v5 = *v8;
        v10 = *(a2 - 1);
      }

      v5[1] = v10;
    }

    else
    {
      if (a4 == 1)
      {
        *a5 = *result;
        return result;
      }

      if (a4 > 8)
      {
        v11 = a4 >> 1;
        v12 = a4 >> 1;
        v13 = &result[v12];
        sub_BF5410(result, &result[v12], a3, v11, a5, v11);
        result = sub_BF5410(&v8[v12], a2, a3, a4 - v11, &v5[v12], a4 - v11);
        v15 = v5;
        v16 = v13;
        do
        {
          if (v16 == a2)
          {
            if (v8 == v13)
            {
              return result;
            }

            v32 = v13 - v8 - 4;
            if (v32 >= 0x1C)
            {
              if ((v15 - v8) >= 0x20)
              {
                v34 = v5 + 4;
                v35 = (v32 >> 2) + 1;
                v36 = v35 & 0x7FFFFFFFFFFFFFF8;
                v5 = (v5 + v36 * 4);
                v33 = &v8[v36];
                v37 = (v8 + 4);
                v38 = v35 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v39 = *v37;
                  *(v34 - 1) = *(v37 - 1);
                  *v34 = v39;
                  v37 += 2;
                  v34 += 2;
                  v38 -= 8;
                }

                while (v38);
                if (v35 == (v35 & 0x7FFFFFFFFFFFFFF8))
                {
                  return result;
                }
              }

              else
              {
                v33 = v8;
              }
            }

            else
            {
              v33 = v8;
            }

            do
            {
              v40 = *v33++;
              *v5++ = v40;
            }

            while (v33 != v13);
            return result;
          }

          v17 = v16;
          v18 = (*a3)[3];
          if (!v18)
          {
            goto LABEL_46;
          }

          result = (*(*v18 + 48))(v18, *a3[1] + 248 * *v16, *a3[1] + 248 * *v8);
          if (result)
          {
            v19 = v17;
          }

          else
          {
            v19 = v8;
          }

          if (result)
          {
            v20 = 1;
          }

          else
          {
            v20 = 0;
          }

          v16 = &v17[v20];
          if (result)
          {
            v21 = 0;
          }

          else
          {
            v21 = 4;
          }

          v8 = (v8 + v21);
          *v5++ = *v19;
          ++v15;
        }

        while (v8 != v13);
        if (v16 != a2)
        {
          v22 = a2 - &v17[v20] - 4;
          if (v22 < 0x2C)
          {
            goto LABEL_49;
          }

          if ((v15 - v17 - v20 * 4) < 0x20)
          {
            goto LABEL_49;
          }

          v23 = 0;
          v24 = (v22 >> 2) + 1;
          v25 = v24 & 0x7FFFFFFFFFFFFFF8;
          v26 = &v5[v25];
          v16 = (v16 + v25 * 4);
          v27 = &v17[v20 + 4];
          v28 = v24 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v29 = &v5[v23];
            v30 = *v27;
            *v29 = *(v27 - 1);
            *(v29 + 1) = v30;
            v27 += 8;
            v23 += 8;
            v28 -= 8;
          }

          while (v28);
          v5 = v26;
          if (v24 != (v24 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_49:
            do
            {
              v31 = *v16++;
              *v5++ = v31;
            }

            while (v16 != a2);
          }
        }
      }

      else
      {

        return sub_BF5FA8(result, a2, a5, a3);
      }
    }
  }

  return result;
}

uint64_t sub_BF5C00(uint64_t result, char *a2, unsigned int *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v56 = a6;
  if (a6)
  {
    v13 = result;
    while (v56 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v14 = 0;
      v15 = -a5;
      while (1)
      {
        v16 = *(*a4 + 24);
        if (!v16)
        {
LABEL_44:
          sub_2B7420();
        }

        result = (*(*v16 + 48))(v16, *a4[1] + 248 * *a2, *a4[1] + 248 * *&v13[v14]);
        if (result)
        {
          break;
        }

        v14 += 4;
        if (__CFADD__(v15++, 1))
        {
          return result;
        }
      }

      v18 = -v15;
      v19 = &v13[v14];
      v20 = v56;
      v52 = a8;
      v53 = a7;
      v54 = v13;
      v51 = &v13[v14];
      if (-v15 >= v56)
      {
        if (v15 == -1)
        {
          v49 = *&v13[v14];
          *&v13[v14] = *a2;
          *a2 = v49;
          return result;
        }

        v31 = v18 / 2;
        v58 = &v13[4 * (v18 / 2)];
        v23 = a2;
        if (a2 != a3)
        {
          v50 = v18 / 2;
          v32 = *a4;
          v57 = a4[1];
          v33 = (a3 - a2) >> 2;
          v23 = a2;
          do
          {
            v34 = *(v32 + 24);
            if (!v34)
            {
              goto LABEL_44;
            }

            v35 = &v23[4 * (v33 >> 1)];
            v37 = *v35;
            v36 = v35 + 4;
            v38 = (*(*v34 + 48))(v34, *v57 + 248 * v37, *v57 + 248 * *&v58[v14]);
            if (v38)
            {
              v33 += ~(v33 >> 1);
            }

            else
            {
              v33 >>= 1;
            }

            if (v38)
            {
              v23 = v36;
            }
          }

          while (v33);
          v20 = v56;
          v31 = v50;
        }

        v21 = (v23 - a2) >> 2;
        v24 = &v58[v14];
      }

      else
      {
        v21 = v56 / 2;
        v22 = v13;
        v23 = &a2[4 * (v56 / 2)];
        v24 = a2;
        v25 = a2 - v22 - v14;
        if (v25)
        {
          v26 = v25 >> 2;
          v24 = v19;
          do
          {
            v27 = *(*a4 + 24);
            if (!v27)
            {
              goto LABEL_44;
            }

            v28 = &v24[4 * (v26 >> 1)];
            v30 = *v28;
            v29 = v28 + 4;
            if ((*(*v27 + 48))(v27, *a4[1] + 248 * *v23, *a4[1] + 248 * v30))
            {
              v26 >>= 1;
            }

            else
            {
              v24 = v29;
              v26 += ~(v26 >> 1);
            }
          }

          while (v26);
          v20 = v56;
          v21 = v56 / 2;
        }

        v31 = (v24 - v54 - v14) >> 2;
      }

      a5 = -(v31 + v15);
      v39 = v20;
      v59 = v20 - v21;
      v40 = a2;
      v41 = v31;
      v42 = sub_BF6448(v24, v40, v23);
      v43 = v41;
      v44 = v42;
      if (v43 + v21 >= v39 - (v43 + v21) - v15)
      {
        v47 = v43;
        a7 = v53;
        result = sub_BF5C00(v42, v23, a3, a4, a5, v59, v53, v52);
        v48 = v24;
        a8 = v52;
        a5 = v47;
        a3 = v44;
        v56 = v21;
        a2 = v48;
        v13 = v51;
        if (!v21)
        {
          return result;
        }
      }

      else
      {
        a7 = v53;
        v45 = v24;
        a8 = v52;
        result = sub_BF5C00(&v54[v14], v45, v42, a4, v43, v21, v53, v52);
        v46 = v44;
        v56 = v59;
        a2 = v23;
        v13 = v46;
        if (!v59)
        {
          return result;
        }
      }
    }

    return sub_BF6110(v13, a2, a3, a4, a5, v56, a7);
  }

  return result;
}

unsigned int *sub_BF5FA8(unsigned int *result, unsigned int *a2, unsigned int *a3, void **a4)
{
  if (result != a2)
  {
    v6 = result + 1;
    *a3 = *result;
    if (result + 1 != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        v12 = (*a4)[3];
        if (!v12)
        {
LABEL_15:
          sub_2B7420();
        }

        v13 = v9++;
        result = (*(*v12 + 48))(v12, *a4[1] + 248 * *v6, *a4[1] + 248 * *v13);
        v10 = v9;
        if (result)
        {
          v13[1] = *v13;
          v10 = a3;
          if (v13 != a3)
          {
            v14 = v8;
            do
            {
              v15 = (*a4)[3];
              if (!v15)
              {
                goto LABEL_15;
              }

              result = (*(*v15 + 48))(v15, *a4[1] + 248 * *v6, *a4[1] + 248 * *(a3 + v14 - 4));
              if (!result)
              {
                v10 = (a3 + v14);
                goto LABEL_5;
              }

              *(a3 + v14) = *(a3 + v14 - 4);
              v14 -= 4;
            }

            while (v14);
            v10 = a3;
          }
        }

LABEL_5:
        v11 = *v6++;
        *v10 = v11;
        v8 += 4;
      }

      while (v6 != a2);
    }
  }

  return result;
}

char *sub_BF6110(char *__dst, char *a2, unsigned int *a3, void **a4, uint64_t a5, uint64_t a6, char *__src)
{
  v7 = __src;
  v9 = a3;
  v10 = a2;
  v11 = __dst;
  if (a5 <= a6)
  {
    if (__dst == a2)
    {
      return __dst;
    }

    v21 = a2 - __dst - 4;
    if (v21 < 0x1C)
    {
      v22 = __src;
      v23 = __dst;
    }

    else
    {
      v22 = __src;
      v23 = __dst;
      if ((__src - __dst) > 0x1F)
      {
        v24 = (v21 >> 2) + 1;
        v25 = 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
        v22 = &__src[v25];
        v23 = &__dst[v25];
        v26 = (__dst + 16);
        v27 = __src + 16;
        v28 = v24 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v29 = *v26;
          *(v27 - 1) = *(v26 - 1);
          *v27 = v29;
          v26 += 2;
          v27 += 2;
          v28 -= 8;
        }

        while (v28);
        if (v24 == (v24 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_38:
          while (v10 != v9)
          {
            v39 = (*a4)[3];
            if (!v39)
            {
LABEL_58:
              sub_2B7420();
            }

            __dst = (*(*v39 + 48))(v39, *a4[1] + 248 * *v10, *a4[1] + 248 * *v7);
            if (__dst)
            {
              v40 = v10;
            }

            else
            {
              v40 = v7;
            }

            if (__dst)
            {
              v41 = 4;
            }

            else
            {
              v41 = 0;
            }

            v10 = (v10 + v41);
            if (__dst)
            {
              v42 = 0;
            }

            else
            {
              v42 = 4;
            }

            v7 = (v7 + v42);
            *v11++ = *v40;
            if (v7 == v22)
            {
              return __dst;
            }
          }

          return memmove(v11, v7, v22 - v7);
        }
      }
    }

    do
    {
      v38 = *v23;
      v23 += 4;
      *v22 = v38;
      v22 += 4;
    }

    while (v23 != a2);
    goto LABEL_38;
  }

  if (a2 == a3)
  {
    return __dst;
  }

  v12 = a3 - a2 - 4;
  if (v12 < 0x1C)
  {
    v13 = __src;
    v14 = a2;
  }

  else
  {
    v13 = __src;
    v14 = a2;
    if ((__src - a2) > 0x1F)
    {
      v15 = (v12 >> 2) + 1;
      v16 = 4 * (v15 & 0x7FFFFFFFFFFFFFF8);
      v13 = &__src[v16];
      v14 = &a2[v16];
      v17 = (a2 + 16);
      v18 = __src + 16;
      v19 = v15 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 8;
      }

      while (v19);
      if (v15 == (v15 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_18;
      }
    }
  }

  do
  {
    v30 = *v14;
    v14 += 4;
    *v13 = v30;
    v13 += 4;
  }

  while (v14 != a3);
LABEL_18:
  v31 = a3;
  while (v10 != v11)
  {
    v32 = (*a4)[3];
    if (!v32)
    {
      goto LABEL_58;
    }

    __dst = (*(*v32 + 48))(v32, *a4[1] + 248 * *(v13 - 1), *a4[1] + 248 * *(v10 - 1));
    if (__dst)
    {
      v33 = v10;
    }

    else
    {
      v33 = v13;
    }

    if (__dst)
    {
      --v10;
    }

    else
    {
      v13 -= 4;
    }

    *--v31 = *(v33 - 1);
    --v9;
    if (v13 == v7)
    {
      return __dst;
    }
  }

  if (v13 != v7)
  {
    v34 = v13 - v7 - 4;
    if (v34 < 0x2C || (v13 - v9) < 0x20)
    {
      v35 = v13;
LABEL_33:
      v36 = v31 - 1;
      do
      {
        v37 = *--v35;
        *v36-- = v37;
      }

      while (v35 != v7);
      return __dst;
    }

    v43 = v31 - 4;
    v44 = (v34 >> 2) + 1;
    v45 = 4 * (v44 & 0x7FFFFFFFFFFFFFF8);
    v35 = &v13[-v45];
    v31 = (v31 - v45);
    v46 = v13 - 16;
    v47 = v44 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v48 = *v46;
      *(v43 - 1) = *(v46 - 1);
      *v43 = v48;
      v43 -= 8;
      v46 -= 32;
      v47 -= 8;
    }

    while (v47);
    if (v44 != (v44 & 0x7FFFFFFFFFFFFFF8))
    {
      goto LABEL_33;
    }
  }

  return __dst;
}

char *sub_BF6448(char *__src, uint64_t a2, _DWORD *__dst)
{
  v4 = __dst;
  v5 = a2 - __src;
  if (a2 == __src)
  {
    return v4;
  }

  v6 = __dst - a2;
  if (__dst == a2)
  {
    return __src;
  }

  if (__src + 4 == a2)
  {
    v8 = *__src;
    v9 = __src;
    memmove(__src, __src + 4, v6);
    v10 = &v9[v6];
    *v10 = v8;
    return v10;
  }

  else if ((a2 + 4) == __dst)
  {
    v11 = *(__dst - 1);
    v12 = __src + 4;
    v13 = (__dst - 1) - __src;
    if (__dst - 1 != __src)
    {
      v14 = __src;
      memmove(__src + 4, __src, v13);
      __src = v14;
    }

    *__src = v11;
    return v12;
  }

  else
  {
    v15 = v5 >> 2;
    v16 = v6 >> 2;
    if (v5 >> 2 == v6 >> 2)
    {
      v17 = __src + 4;
      v18 = (a2 + 4);
      do
      {
        v19 = *(v17 - 1);
        *(v17 - 1) = *(v18 - 1);
        *(v18 - 1) = v19;
        if (v17 == a2)
        {
          break;
        }

        v17 += 4;
      }

      while (v18++ != __dst);
      return a2;
    }

    else
    {
      v21 = v5 >> 2;
      do
      {
        v22 = v21;
        v21 = v16;
        v16 = v22 % v16;
      }

      while (v16);
      v23 = &__src[4 * v21];
      do
      {
        v25 = *(v23 - 1);
        v23 -= 4;
        v24 = v25;
        v26 = &v23[v5];
        v27 = v23;
        do
        {
          v28 = v26;
          *v27 = *v26;
          v29 = (__dst - v26) >> 2;
          v30 = __OFSUB__(v15, v29);
          v32 = v15 - v29;
          v31 = (v32 < 0) ^ v30;
          v26 = &__src[4 * v32];
          if (v31)
          {
            v26 = &v28[4 * v15];
          }

          v27 = v28;
        }

        while (v26 != v23);
        *v28 = v24;
      }

      while (v23 != __src);
      return &__src[v6];
    }
  }
}

unsigned int *sub_BF6604(unsigned int *result, unsigned int *a2, uint64_t *a3, unint64_t a4, unsigned int *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    v7 = result;
    if (a4 == 2)
    {
      v8 = *(*a3 + 24);
      if (!v8)
      {
LABEL_46:
        sub_2B7420();
      }

      result = (*(*v8 + 48))(v8, *a3[1] + 160 * *(a2 - 1), *a3[1] + 160 * *v7);
      if (result)
      {
        v10 = *v7;
        *v7 = *(a2 - 1);
        *(a2 - 1) = v10;
      }
    }

    else if (a4 > 128)
    {
      v13 = a4 >> 1;
      v14 = a4 >> 1;
      v15 = a4 - (a4 >> 1);
      v16 = &result[v14];
      if (a4 <= a6)
      {
        sub_BF6ADC(result, v16, a3, a4 >> 1, a5);
        v19 = &a5[v13];
        result = sub_BF6ADC(&v7[v14], a2, a3, v15, v19);
        v20 = v19;
        v21 = a5;
        v22 = v7;
        v23 = &a5[a4];
        do
        {
          if (v20 == v23)
          {
            if (v21 == v19)
            {
              return result;
            }

            v37 = &a5[v14] - v21 - 4;
            if (v37 >= 0x1C)
            {
              if ((v7 - v21) >= 0x20)
              {
                v39 = v22 + 4;
                v40 = (v37 >> 2) + 1;
                v41 = v40 & 0x7FFFFFFFFFFFFFF8;
                v38 = &v21[v41];
                v22 = (v22 + v41 * 4);
                v42 = (v21 + 4);
                v43 = v40 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v44 = *v42;
                  *(v39 - 1) = *(v42 - 1);
                  *v39 = v44;
                  v39 += 2;
                  v42 += 2;
                  v43 -= 8;
                }

                while (v43);
                if (v40 == (v40 & 0x7FFFFFFFFFFFFFF8))
                {
                  return result;
                }
              }

              else
              {
                v38 = v21;
              }
            }

            else
            {
              v38 = v21;
            }

            do
            {
              v45 = *v38++;
              *v22++ = v45;
            }

            while (v38 != v19);
            return result;
          }

          v24 = v20;
          v25 = *(*a3 + 24);
          if (!v25)
          {
            goto LABEL_46;
          }

          result = (*(*v25 + 48))(v25, *a3[1] + 160 * *v20, *a3[1] + 160 * *v21);
          if (result)
          {
            v26 = v24;
          }

          else
          {
            v26 = v21;
          }

          if (result)
          {
            v27 = 0;
          }

          else
          {
            v27 = 4;
          }

          v21 = (v21 + v27);
          if (result)
          {
            v28 = 1;
          }

          else
          {
            v28 = 0;
          }

          v20 = &v24[v28];
          *v22++ = *v26;
          ++v7;
        }

        while (v21 != v19);
        if (v20 != v23)
        {
          v29 = v23 - v24 - v28 * 4 - 4;
          if (v29 <= 0x2B)
          {
            goto LABEL_49;
          }

          if ((v7 - v24 - v28 * 4) < 0x20)
          {
            goto LABEL_49;
          }

          v30 = v22 + 4;
          v31 = (v29 >> 2) + 1;
          v32 = 4 * (v31 & 0x7FFFFFFFFFFFFFF8);
          v20 = (v20 + v32);
          v22 = (v22 + v32);
          v33 = &v24[v28 + 4];
          v34 = v31 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v35 = *v33;
            *(v30 - 1) = *(v33 - 1);
            *v30 = v35;
            v30 += 2;
            v33 += 8;
            v34 -= 8;
          }

          while (v34);
          if (v31 != (v31 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_49:
            do
            {
              v36 = *v20++;
              *v22++ = v36;
            }

            while (v20 != v23);
          }
        }
      }

      else
      {
        sub_BF6604(result, v16, a3, a4 >> 1, a5, a6);
        sub_BF6604(&v7[v14], a2, a3, v15, a5, a6);

        return sub_BF6DF4(v7, &v7[v14], a2, a3, v13, v15, a5, a6);
      }
    }

    else
    {

      return sub_BF6994(result, a2, a3);
    }
  }

  return result;
}

uint64_t sub_BF6994(uint64_t result, unsigned int *a2, void **a3)
{
  if (result != a2)
  {
    v4 = result;
    v5 = (result + 4);
    if ((result + 4) != a2)
    {
      v7 = 0;
      v8 = result;
      do
      {
        v10 = v5;
        v11 = (*a3)[3];
        if (!v11)
        {
LABEL_15:
          sub_2B7420();
        }

        result = (*(*v11 + 48))(v11, *a3[1] + 160 * *v5, *a3[1] + 160 * *v8);
        if (result)
        {
          v12 = *v10;
          v13 = v7;
          do
          {
            *(v4 + v13 + 4) = *(v4 + v13);
            if (!v13)
            {
              v9 = v4;
              goto LABEL_5;
            }

            v14 = (*a3)[3];
            if (!v14)
            {
              goto LABEL_15;
            }

            result = (*(*v14 + 48))(v14, *a3[1] + 160 * v12, *a3[1] + 160 * *(v4 + v13 - 4));
            v13 -= 4;
          }

          while ((result & 1) != 0);
          v9 = (v4 + v13 + 4);
LABEL_5:
          *v9 = v12;
        }

        v5 = v10 + 1;
        v7 += 4;
        v8 = v10;
      }

      while (v10 + 1 != a2);
    }
  }

  return result;
}

unsigned int *sub_BF6ADC(unsigned int *result, unsigned int *a2, void **a3, uint64_t a4, unsigned int *a5)
{
  if (a4)
  {
    v5 = a5;
    v8 = result;
    if (a4 == 2)
    {
      v9 = (*a3)[3];
      if (!v9)
      {
LABEL_46:
        sub_2B7420();
      }

      result = (*(*v9 + 48))(v9, *a3[1] + 160 * *(a2 - 1), *a3[1] + 160 * *v8);
      if (result)
      {
        *v5 = *(a2 - 1);
        v10 = *v8;
      }

      else
      {
        *v5 = *v8;
        v10 = *(a2 - 1);
      }

      v5[1] = v10;
    }

    else
    {
      if (a4 == 1)
      {
        *a5 = *result;
        return result;
      }

      if (a4 > 8)
      {
        v11 = a4 >> 1;
        v12 = a4 >> 1;
        v13 = &result[v12];
        sub_BF6604(result, &result[v12], a3, v11, a5, v11);
        result = sub_BF6604(&v8[v12], a2, a3, a4 - v11, &v5[v12], a4 - v11);
        v15 = v5;
        v16 = v13;
        do
        {
          if (v16 == a2)
          {
            if (v8 == v13)
            {
              return result;
            }

            v32 = v13 - v8 - 4;
            if (v32 >= 0x1C)
            {
              if ((v15 - v8) >= 0x20)
              {
                v34 = v5 + 4;
                v35 = (v32 >> 2) + 1;
                v36 = v35 & 0x7FFFFFFFFFFFFFF8;
                v5 = (v5 + v36 * 4);
                v33 = &v8[v36];
                v37 = (v8 + 4);
                v38 = v35 & 0x7FFFFFFFFFFFFFF8;
                do
                {
                  v39 = *v37;
                  *(v34 - 1) = *(v37 - 1);
                  *v34 = v39;
                  v37 += 2;
                  v34 += 2;
                  v38 -= 8;
                }

                while (v38);
                if (v35 == (v35 & 0x7FFFFFFFFFFFFFF8))
                {
                  return result;
                }
              }

              else
              {
                v33 = v8;
              }
            }

            else
            {
              v33 = v8;
            }

            do
            {
              v40 = *v33++;
              *v5++ = v40;
            }

            while (v33 != v13);
            return result;
          }

          v17 = v16;
          v18 = (*a3)[3];
          if (!v18)
          {
            goto LABEL_46;
          }

          result = (*(*v18 + 48))(v18, *a3[1] + 160 * *v16, *a3[1] + 160 * *v8);
          if (result)
          {
            v19 = v17;
          }

          else
          {
            v19 = v8;
          }

          if (result)
          {
            v20 = 1;
          }

          else
          {
            v20 = 0;
          }

          v16 = &v17[v20];
          if (result)
          {
            v21 = 0;
          }

          else
          {
            v21 = 4;
          }

          v8 = (v8 + v21);
          *v5++ = *v19;
          ++v15;
        }

        while (v8 != v13);
        if (v16 != a2)
        {
          v22 = a2 - &v17[v20] - 4;
          if (v22 < 0x2C)
          {
            goto LABEL_49;
          }

          if ((v15 - v17 - v20 * 4) < 0x20)
          {
            goto LABEL_49;
          }

          v23 = 0;
          v24 = (v22 >> 2) + 1;
          v25 = v24 & 0x7FFFFFFFFFFFFFF8;
          v26 = &v5[v25];
          v16 = (v16 + v25 * 4);
          v27 = &v17[v20 + 4];
          v28 = v24 & 0x7FFFFFFFFFFFFFF8;
          do
          {
            v29 = &v5[v23];
            v30 = *v27;
            *v29 = *(v27 - 1);
            *(v29 + 1) = v30;
            v27 += 8;
            v23 += 8;
            v28 -= 8;
          }

          while (v28);
          v5 = v26;
          if (v24 != (v24 & 0x7FFFFFFFFFFFFFF8))
          {
LABEL_49:
            do
            {
              v31 = *v16++;
              *v5++ = v31;
            }

            while (v16 != a2);
          }
        }
      }

      else
      {

        return sub_BF719C(result, a2, a5, a3);
      }
    }
  }

  return result;
}

uint64_t sub_BF6DF4(uint64_t result, char *a2, unsigned int *a3, uint64_t *a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v56 = a6;
  if (a6)
  {
    v13 = result;
    while (v56 > a8 && a5 > a8)
    {
      if (!a5)
      {
        return result;
      }

      v14 = 0;
      v15 = -a5;
      while (1)
      {
        v16 = *(*a4 + 24);
        if (!v16)
        {
LABEL_44:
          sub_2B7420();
        }

        result = (*(*v16 + 48))(v16, *a4[1] + 160 * *a2, *a4[1] + 160 * *&v13[v14]);
        if (result)
        {
          break;
        }

        v14 += 4;
        if (__CFADD__(v15++, 1))
        {
          return result;
        }
      }

      v18 = -v15;
      v19 = &v13[v14];
      v20 = v56;
      v52 = a8;
      v53 = a7;
      v54 = v13;
      v51 = &v13[v14];
      if (-v15 >= v56)
      {
        if (v15 == -1)
        {
          v49 = *&v13[v14];
          *&v13[v14] = *a2;
          *a2 = v49;
          return result;
        }

        v31 = v18 / 2;
        v58 = &v13[4 * (v18 / 2)];
        v23 = a2;
        if (a2 != a3)
        {
          v50 = v18 / 2;
          v32 = *a4;
          v57 = a4[1];
          v33 = (a3 - a2) >> 2;
          v23 = a2;
          do
          {
            v34 = *(v32 + 24);
            if (!v34)
            {
              goto LABEL_44;
            }

            v35 = &v23[4 * (v33 >> 1)];
            v37 = *v35;
            v36 = v35 + 4;
            v38 = (*(*v34 + 48))(v34, *v57 + 160 * v37, *v57 + 160 * *&v58[v14]);
            if (v38)
            {
              v33 += ~(v33 >> 1);
            }

            else
            {
              v33 >>= 1;
            }

            if (v38)
            {
              v23 = v36;
            }
          }

          while (v33);
          v20 = v56;
          v31 = v50;
        }

        v21 = (v23 - a2) >> 2;
        v24 = &v58[v14];
      }

      else
      {
        v21 = v56 / 2;
        v22 = v13;
        v23 = &a2[4 * (v56 / 2)];
        v24 = a2;
        v25 = a2 - v22 - v14;
        if (v25)
        {
          v26 = v25 >> 2;
          v24 = v19;
          do
          {
            v27 = *(*a4 + 24);
            if (!v27)
            {
              goto LABEL_44;
            }

            v28 = &v24[4 * (v26 >> 1)];
            v30 = *v28;
            v29 = v28 + 4;
            if ((*(*v27 + 48))(v27, *a4[1] + 160 * *v23, *a4[1] + 160 * v30))
            {
              v26 >>= 1;
            }

            else
            {
              v24 = v29;
              v26 += ~(v26 >> 1);
            }
          }

          while (v26);
          v20 = v56;
          v21 = v56 / 2;
        }

        v31 = (v24 - v54 - v14) >> 2;
      }

      a5 = -(v31 + v15);
      v39 = v20;
      v59 = v20 - v21;
      v40 = a2;
      v41 = v31;
      v42 = sub_BF6448(v24, v40, v23);
      v43 = v41;
      v44 = v42;
      if (v43 + v21 >= v39 - (v43 + v21) - v15)
      {
        v47 = v43;
        a7 = v53;
        result = sub_BF6DF4(v42, v23, a3, a4, a5, v59, v53, v52);
        v48 = v24;
        a8 = v52;
        a5 = v47;
        a3 = v44;
        v56 = v21;
        a2 = v48;
        v13 = v51;
        if (!v21)
        {
          return result;
        }
      }

      else
      {
        a7 = v53;
        v45 = v24;
        a8 = v52;
        result = sub_BF6DF4(&v54[v14], v45, v42, a4, v43, v21, v53, v52);
        v46 = v44;
        v56 = v59;
        a2 = v23;
        v13 = v46;
        if (!v59)
        {
          return result;
        }
      }
    }

    return sub_BF7304(v13, a2, a3, a4, a5, v56, a7);
  }

  return result;
}

unsigned int *sub_BF719C(unsigned int *result, unsigned int *a2, unsigned int *a3, void **a4)
{
  if (result != a2)
  {
    v6 = result + 1;
    *a3 = *result;
    if (result + 1 != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        v12 = (*a4)[3];
        if (!v12)
        {
LABEL_15:
          sub_2B7420();
        }

        v13 = v9++;
        result = (*(*v12 + 48))(v12, *a4[1] + 160 * *v6, *a4[1] + 160 * *v13);
        v10 = v9;
        if (result)
        {
          v13[1] = *v13;
          v10 = a3;
          if (v13 != a3)
          {
            v14 = v8;
            do
            {
              v15 = (*a4)[3];
              if (!v15)
              {
                goto LABEL_15;
              }

              result = (*(*v15 + 48))(v15, *a4[1] + 160 * *v6, *a4[1] + 160 * *(a3 + v14 - 4));
              if (!result)
              {
                v10 = (a3 + v14);
                goto LABEL_5;
              }

              *(a3 + v14) = *(a3 + v14 - 4);
              v14 -= 4;
            }

            while (v14);
            v10 = a3;
          }
        }

LABEL_5:
        v11 = *v6++;
        *v10 = v11;
        v8 += 4;
      }

      while (v6 != a2);
    }
  }

  return result;
}

char *sub_BF7304(char *__dst, char *a2, unsigned int *a3, void **a4, uint64_t a5, uint64_t a6, char *__src)
{
  v7 = __src;
  v9 = a3;
  v10 = a2;
  v11 = __dst;
  if (a5 <= a6)
  {
    if (__dst == a2)
    {
      return __dst;
    }

    v21 = a2 - __dst - 4;
    if (v21 < 0x1C)
    {
      v22 = __src;
      v23 = __dst;
    }

    else
    {
      v22 = __src;
      v23 = __dst;
      if ((__src - __dst) > 0x1F)
      {
        v24 = (v21 >> 2) + 1;
        v25 = 4 * (v24 & 0x7FFFFFFFFFFFFFF8);
        v22 = &__src[v25];
        v23 = &__dst[v25];
        v26 = (__dst + 16);
        v27 = __src + 16;
        v28 = v24 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v29 = *v26;
          *(v27 - 1) = *(v26 - 1);
          *v27 = v29;
          v26 += 2;
          v27 += 2;
          v28 -= 8;
        }

        while (v28);
        if (v24 == (v24 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_38:
          while (v10 != v9)
          {
            v39 = (*a4)[3];
            if (!v39)
            {
LABEL_58:
              sub_2B7420();
            }

            __dst = (*(*v39 + 48))(v39, *a4[1] + 160 * *v10, *a4[1] + 160 * *v7);
            if (__dst)
            {
              v40 = v10;
            }

            else
            {
              v40 = v7;
            }

            if (__dst)
            {
              v41 = 4;
            }

            else
            {
              v41 = 0;
            }

            v10 = (v10 + v41);
            if (__dst)
            {
              v42 = 0;
            }

            else
            {
              v42 = 4;
            }

            v7 = (v7 + v42);
            *v11++ = *v40;
            if (v7 == v22)
            {
              return __dst;
            }
          }

          return memmove(v11, v7, v22 - v7);
        }
      }
    }

    do
    {
      v38 = *v23;
      v23 += 4;
      *v22 = v38;
      v22 += 4;
    }

    while (v23 != a2);
    goto LABEL_38;
  }

  if (a2 == a3)
  {
    return __dst;
  }

  v12 = a3 - a2 - 4;
  if (v12 < 0x1C)
  {
    v13 = __src;
    v14 = a2;
  }

  else
  {
    v13 = __src;
    v14 = a2;
    if ((__src - a2) > 0x1F)
    {
      v15 = (v12 >> 2) + 1;
      v16 = 4 * (v15 & 0x7FFFFFFFFFFFFFF8);
      v13 = &__src[v16];
      v14 = &a2[v16];
      v17 = (a2 + 16);
      v18 = __src + 16;
      v19 = v15 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 8;
      }

      while (v19);
      if (v15 == (v15 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_18;
      }
    }
  }

  do
  {
    v30 = *v14;
    v14 += 4;
    *v13 = v30;
    v13 += 4;
  }

  while (v14 != a3);
LABEL_18:
  v31 = a3;
  while (v10 != v11)
  {
    v32 = (*a4)[3];
    if (!v32)
    {
      goto LABEL_58;
    }

    __dst = (*(*v32 + 48))(v32, *a4[1] + 160 * *(v13 - 1), *a4[1] + 160 * *(v10 - 1));
    if (__dst)
    {
      v33 = v10;
    }

    else
    {
      v33 = v13;
    }

    if (__dst)
    {
      --v10;
    }

    else
    {
      v13 -= 4;
    }

    *--v31 = *(v33 - 1);
    --v9;
    if (v13 == v7)
    {
      return __dst;
    }
  }

  if (v13 != v7)
  {
    v34 = v13 - v7 - 4;
    if (v34 < 0x2C || (v13 - v9) < 0x20)
    {
      v35 = v13;
LABEL_33:
      v36 = v31 - 1;
      do
      {
        v37 = *--v35;
        *v36-- = v37;
      }

      while (v35 != v7);
      return __dst;
    }

    v43 = v31 - 4;
    v44 = (v34 >> 2) + 1;
    v45 = 4 * (v44 & 0x7FFFFFFFFFFFFFF8);
    v35 = &v13[-v45];
    v31 = (v31 - v45);
    v46 = v13 - 16;
    v47 = v44 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v48 = *v46;
      *(v43 - 1) = *(v46 - 1);
      *v43 = v48;
      v43 -= 8;
      v46 -= 32;
      v47 -= 8;
    }

    while (v47);
    if (v44 != (v44 & 0x7FFFFFFFFFFFFFF8))
    {
      goto LABEL_33;
    }
  }

  return __dst;
}

double sub_BF763C(__int128 *a1, __int128 *a2, uint64_t a3, unint64_t a4, __int128 *a5, uint64_t a6, __n128 a7)
{
  if (a4 < 2)
  {
    return a7.n128_f64[0];
  }

  v9 = a1;
  if (a4 == 2)
  {
    v10 = *(a3 + 24);
    if (v10)
    {
      v11 = a2 - 1;
      if ((*(*v10 + 48))(v10, a2 - 1, v9))
      {
        a7 = *v9;
        *v9 = *v11;
        *v11 = a7;
      }

      return a7.n128_f64[0];
    }

LABEL_38:
    sub_2B7420();
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return a7.n128_f64[0];
    }

    v12 = a1 + 1;
    if (a1 + 1 == a2)
    {
      return a7.n128_f64[0];
    }

    v13 = 0;
    v14 = a1;
    while (1)
    {
      v16 = *(a3 + 24);
      if (!v16)
      {
        goto LABEL_38;
      }

      v17 = v12;
      if ((*(*v16 + 48))(v16, v12, v14))
      {
        v36 = *v17;
        v18 = v13;
        do
        {
          *(v9 + v18 + 16) = *(v9 + v18);
          if (!v18)
          {
            v15 = v9;
            goto LABEL_12;
          }

          v19 = *(a3 + 24);
          if (!v19)
          {
            goto LABEL_38;
          }

          v18 -= 16;
        }

        while (((*(*v19 + 48))(v19, &v36, v9 + v18) & 1) != 0);
        v15 = (v9 + v18 + 16);
LABEL_12:
        a7.n128_u64[0] = v36;
        *v15 = v36;
      }

      v12 = v17 + 1;
      v13 += 16;
      v14 = v17;
      if (v17 + 1 == a2)
      {
        return a7.n128_f64[0];
      }
    }
  }

  v20 = a5;
  v21 = a4 >> 1;
  v22 = &a1[a4 >> 1];
  v23 = a4 - (a4 >> 1);
  if (a4 <= a6)
  {
    sub_BF7928(a1, v22, a3, a4 >> 1, a5);
    v27 = &v20[v21];
    sub_BF7928(v22, a2, a3, v23, v27);
    v28 = &v20[a4];
    v29 = v27;
    while (v29 != v28)
    {
      v31 = *(a3 + 24);
      if (!v31)
      {
        goto LABEL_38;
      }

      if ((*(*v31 + 48))(v31, v29, v20))
      {
        v32 = *v29++;
        a7.n128_u64[0] = v32;
        *v9++ = v32;
        if (v20 == v27)
        {
LABEL_36:
          while (v29 != v28)
          {
            v34 = *v29++;
            a7.n128_u64[0] = v34;
            *v9++ = v34;
          }

          return a7.n128_f64[0];
        }
      }

      else
      {
        v30 = *v20++;
        a7.n128_u64[0] = v30;
        *v9++ = v30;
        if (v20 == v27)
        {
          goto LABEL_36;
        }
      }
    }

    while (v20 != v27)
    {
      v33 = *v20++;
      a7.n128_u64[0] = v33;
      *v9++ = v33;
    }
  }

  else
  {
    sub_BF763C(a1, v22, a3, a4 >> 1, a5, a6);
    sub_BF763C(v22, a2, a3, v23, v20, a6);

    a7.n128_u64[0] = sub_BF7BC8(v9, v22, a2, a3, v21, v23, v20, a6, v25).n128_u64[0];
  }

  return a7.n128_f64[0];
}

__int128 *sub_BF7928(__int128 *result, __int128 *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  if (a4)
  {
    v5 = a5;
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a3 + 24);
      if (!v9)
      {
        goto LABEL_38;
      }

      v10 = a2 - 1;
      result = (*(*v9 + 48))(v9, a2 - 1, v8);
      if (result)
      {
        *v5 = *v10;
        v11 = *v8;
      }

      else
      {
        *v5 = *v8;
        v11 = *v10;
      }

      v5[1] = v11;
    }

    else
    {
      if (a4 == 1)
      {
        *a5 = *result;
        return result;
      }

      if (a4 > 8)
      {
        v21 = a4 >> 1;
        v22 = a4 >> 1;
        v23 = &result[v22];
        sub_BF763C(result, &result[v22], a3, v21, a5, v21);
        result = sub_BF763C(&v8[v22], a2, a3, a4 - v21, &v5[v22], a4 - v21);
        v25 = &v8[v22];
        while (v25 != a2)
        {
          v27 = *(a3 + 24);
          if (!v27)
          {
            goto LABEL_38;
          }

          result = (*(*v27 + 48))(v27, v25, v8);
          if (result)
          {
            v28 = *v25++;
            *v5++ = v28;
            if (v8 == v23)
            {
LABEL_33:
              while (v25 != a2)
              {
                v30 = *v25++;
                *v5++ = v30;
              }

              return result;
            }
          }

          else
          {
            v26 = *v8++;
            *v5++ = v26;
            if (v8 == v23)
            {
              goto LABEL_33;
            }
          }
        }

        while (v8 != v23)
        {
          v29 = *v8++;
          *v5++ = v29;
        }
      }

      else if (result != a2)
      {
        v12 = result + 1;
        *a5 = *result;
        if (result + 1 != a2)
        {
          v13 = 0;
          v14 = a5;
          while (1)
          {
            v17 = *(a3 + 24);
            if (!v17)
            {
              break;
            }

            v18 = v14++;
            result = (*(*v17 + 48))(v17, v12, v18);
            v15 = v14;
            if (result)
            {
              *v14 = *v18;
              v15 = v5;
              if (v18 != v5)
              {
                v19 = v13;
                do
                {
                  v20 = *(a3 + 24);
                  if (!v20)
                  {
                    goto LABEL_38;
                  }

                  result = (*(*v20 + 48))(v20, v12, v5 + v19 - 16);
                  if (!result)
                  {
                    v15 = (v5 + v19);
                    goto LABEL_13;
                  }

                  *(v5 + v19) = *(v5 + v19 - 16);
                  v19 -= 16;
                }

                while (v19);
                v15 = v5;
              }
            }

LABEL_13:
            v16 = *v12++;
            *v15 = v16;
            v13 += 16;
            if (v12 == a2)
            {
              return result;
            }
          }

LABEL_38:
          sub_2B7420();
        }
      }
    }
  }

  return result;
}

__n128 sub_BF7BC8(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 result)
{
  v50 = a6;
  if (a6)
  {
    while (1)
    {
      if (v50 <= a8 || a5 <= a8)
      {
        sub_BF816C(a1, a2, a3, a4, a5, v50, a7);
        return result;
      }

      if (!a5)
      {
        return result;
      }

      v13 = 0;
      v14 = -a5;
      while (1)
      {
        v15 = *(a4 + 24);
        if (!v15)
        {
          sub_2B7420();
        }

        if ((*(*v15 + 48))(v15, a2, &a1[v13 / 0x10]))
        {
          break;
        }

        v13 += 16;
        if (__CFADD__(v14++, 1))
        {
          return result;
        }
      }

      v17 = -v14;
      if (-v14 < v50)
      {
        break;
      }

      if (v14 == -1)
      {
        v54 = a1[v13 / 0x10];
        a1[v13 / 0x10] = *a2;
        result = v54;
        *a2 = v54;
        return result;
      }

      v24 = *(a4 + 24);
      if (v24)
      {
        if (v24 == a4)
        {
          v56 = v55;
          (*(*v24 + 24))(v24, v55);
        }

        else
        {
          v56 = (*(*v24 + 16))(v24);
        }
      }

      else
      {
        v56 = 0;
      }

      v45 = v17 / 2;
      v19 = &a1[v17 / 2 + v13 / 0x10];
      v18 = a2;
      if (a2 != a3)
      {
        v25 = a3 - a2;
        v18 = a2;
        do
        {
          if (!v56)
          {
            sub_2B7420();
          }

          v26 = &v18[v25 >> 1];
          v27 = (*(*v56 + 48))(v56, v26, v19);
          if (v27)
          {
            v25 += ~(v25 >> 1);
          }

          else
          {
            v25 >>= 1;
          }

          if (v27)
          {
            v18 = v26 + 1;
          }
        }

        while (v25);
      }

      if (v56 == v55)
      {
        (*(*v56 + 32))(v56);
      }

      else if (v56)
      {
        (*(*v56 + 40))();
      }

      v46 = v18 - a2;
      v22 = v18;
      v23 = a2 - v19;
      if (a2 != v19)
      {
        goto LABEL_41;
      }

LABEL_63:
      a5 = -v14 - v45;
      v44 = v50 - v46;
      if (v45 + v46 >= v50 - (v45 + v46) - v14)
      {
        sub_BF7BC8(v22, v18, a3, a4, -v14 - v45, v50 - v46, a7, a8);
        a2 = v19;
        a5 = v45;
        a3 = v22;
        a1 = (a1 + v13);
        v50 = v46;
        if (!v46)
        {
          return result;
        }
      }

      else
      {
        sub_BF7BC8(&a1[v13 / 0x10], v19, v22, a4, v45, v46, a7, a8);
        a1 = v22;
        a2 = v18;
        v50 -= v46;
        if (!v44)
        {
          return result;
        }
      }
    }

    v46 = v50 / 2;
    v18 = &a2[v50 / 2];
    v19 = a2;
    if (a2 - a1 != v13)
    {
      v20 = (a2 - a1 - v13) >> 4;
      v19 = &a1[v13 / 0x10];
      do
      {
        v21 = *(a4 + 24);
        if (!v21)
        {
          sub_2B7420();
        }

        if ((*(*v21 + 48))(v21, v18, &v19[v20 >> 1]))
        {
          v20 >>= 1;
        }

        else
        {
          v19 += (v20 >> 1) + 1;
          v20 += ~(v20 >> 1);
        }
      }

      while (v20);
    }

    v45 = (v19 - a1 - v13) >> 4;
    v22 = &a2[v50 / 2];
    v23 = a2 - v19;
    if (a2 == v19)
    {
      goto LABEL_63;
    }

LABEL_41:
    v22 = v19;
    if (a2 != v18)
    {
      if (v19 + 1 == a2)
      {
        v51 = *v19;
        memmove(v19, a2, v18 - a2);
        v22 = (v19 + v18 - a2);
        *v22 = v51;
      }

      else if (a2 + 1 == v18)
      {
        v22 = v19 + 1;
        v52 = *(v18 - 1);
        if (v18 - 1 != v19)
        {
          memmove(v19 + 1, v19, (v18 - 1) - v19);
        }

        *v19 = v52;
      }

      else
      {
        v28 = v23 >> 4;
        v29 = v18 - a2;
        if (v23 >> 4 == v29)
        {
          v30 = v19 + 1;
          v31 = a2 + 1;
          do
          {
            v53 = *(v30 - 1);
            *(v30 - 1) = *(v31 - 1);
            *(v31 - 1) = v53;
            if (v30 == a2)
            {
              break;
            }

            ++v30;
          }

          while (v31++ != v18);
          v22 = a2;
        }

        else
        {
          v33 = v23 >> 4;
          do
          {
            v34 = v33;
            v33 = v29;
            v29 = v34 % v29;
          }

          while (v29);
          v35 = &v19[v33];
          do
          {
            v36 = *--v35;
            v37 = (v35 + v23);
            v38 = v35;
            do
            {
              v39 = v37;
              *v38 = *v37;
              v40 = v18 - v37;
              v41 = __OFSUB__(v28, v40);
              v43 = v28 - v40;
              v42 = (v43 < 0) ^ v41;
              v37 = &v19[v43];
              if (v42)
              {
                v37 = &v39[v28];
              }

              v38 = v39;
            }

            while (v37 != v35);
            *v39 = v36;
          }

          while (v35 != v19);
          v22 = (v19 + v18 - a2);
        }
      }
    }

    goto LABEL_63;
  }

  return result;
}

void sub_BF8140(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_BF3B04(va);
  _Unwind_Resume(a1);
}

void sub_BF8154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_BF3B04(va);
  _Unwind_Resume(a1);
}

__int128 *sub_BF816C(__int128 *__dst, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t __src)
{
  v7 = __src;
  v9 = a3;
  v10 = a2;
  v11 = __dst;
  if (a5 <= a6)
  {
    if (__dst != a2)
    {
      v16 = -__src;
      v17 = __src;
      v18 = __dst;
      do
      {
        v19 = *v18++;
        *v17 = v19;
        v17 += 16;
        v16 -= 16;
      }

      while (v18 != a2);
      while (v10 != v9)
      {
        v21 = *(a4 + 24);
        if (!v21)
        {
LABEL_33:
          sub_2B7420();
        }

        __dst = (*(*v21 + 48))(v21, v10, v7);
        if (__dst)
        {
          v22 = *v10++;
          *v11++ = v22;
          if (v17 == v7)
          {
            return __dst;
          }
        }

        else
        {
          v20 = *v7;
          v7 += 16;
          *v11++ = v20;
          if (v17 == v7)
          {
            return __dst;
          }
        }
      }

      return memmove(v11, v7, -&v7[v16]);
    }
  }

  else if (a2 != a3)
  {
    v12 = 0;
    do
    {
      *(__src + v12 * 16) = a2[v12];
      ++v12;
    }

    while (&a2[v12] != a3);
    v13 = (__src + v12 * 16);
    while (v10 != v11)
    {
      v14 = *(a4 + 24);
      if (!v14)
      {
        goto LABEL_33;
      }

      __dst = (*(*v14 + 48))(v14, v13 - 16, v10 - 1);
      if (__dst)
      {
        v15 = (v10 - 1);
      }

      else
      {
        v15 = v13 - 16;
      }

      *--v9 = *v15;
      if (__dst)
      {
        --v10;
      }

      else
      {
        v13 -= 16;
      }

      if (v13 == v7)
      {
        return __dst;
      }
    }

    if (v13 != v7)
    {
      v23 = 0xFFFFFFFFFFFFFFFLL;
      do
      {
        v9[v23--] = *(v13 - 1);
        v13 -= 16;
      }

      while (v13 != v7);
    }
  }

  return __dst;
}

double sub_BF8344(__int128 *a1, __int128 *a2, uint64_t a3, unint64_t a4, __int128 *a5, uint64_t a6, __n128 a7)
{
  if (a4 < 2)
  {
    return a7.n128_f64[0];
  }

  v9 = a1;
  if (a4 == 2)
  {
    v10 = *(a3 + 24);
    if (v10)
    {
      v11 = a2 - 1;
      if ((*(*v10 + 48))(v10, a2 - 1, v9))
      {
        a7 = *v9;
        *v9 = *v11;
        *v11 = a7;
      }

      return a7.n128_f64[0];
    }

LABEL_38:
    sub_2B7420();
  }

  if (a4 <= 128)
  {
    if (a1 == a2)
    {
      return a7.n128_f64[0];
    }

    v12 = a1 + 1;
    if (a1 + 1 == a2)
    {
      return a7.n128_f64[0];
    }

    v13 = 0;
    v14 = a1;
    while (1)
    {
      v16 = *(a3 + 24);
      if (!v16)
      {
        goto LABEL_38;
      }

      v17 = v12;
      if ((*(*v16 + 48))(v16, v12, v14))
      {
        v36 = *v17;
        v18 = v13;
        do
        {
          *(v9 + v18 + 16) = *(v9 + v18);
          if (!v18)
          {
            v15 = v9;
            goto LABEL_12;
          }

          v19 = *(a3 + 24);
          if (!v19)
          {
            goto LABEL_38;
          }

          v18 -= 16;
        }

        while (((*(*v19 + 48))(v19, &v36, v9 + v18) & 1) != 0);
        v15 = (v9 + v18 + 16);
LABEL_12:
        a7.n128_u64[0] = v36;
        *v15 = v36;
      }

      v12 = v17 + 1;
      v13 += 16;
      v14 = v17;
      if (v17 + 1 == a2)
      {
        return a7.n128_f64[0];
      }
    }
  }

  v20 = a5;
  v21 = a4 >> 1;
  v22 = &a1[a4 >> 1];
  v23 = a4 - (a4 >> 1);
  if (a4 <= a6)
  {
    sub_BF8630(a1, v22, a3, a4 >> 1, a5);
    v27 = &v20[v21];
    sub_BF8630(v22, a2, a3, v23, v27);
    v28 = &v20[a4];
    v29 = v27;
    while (v29 != v28)
    {
      v31 = *(a3 + 24);
      if (!v31)
      {
        goto LABEL_38;
      }

      if ((*(*v31 + 48))(v31, v29, v20))
      {
        v32 = *v29++;
        a7.n128_u64[0] = v32;
        *v9++ = v32;
        if (v20 == v27)
        {
LABEL_36:
          while (v29 != v28)
          {
            v34 = *v29++;
            a7.n128_u64[0] = v34;
            *v9++ = v34;
          }

          return a7.n128_f64[0];
        }
      }

      else
      {
        v30 = *v20++;
        a7.n128_u64[0] = v30;
        *v9++ = v30;
        if (v20 == v27)
        {
          goto LABEL_36;
        }
      }
    }

    while (v20 != v27)
    {
      v33 = *v20++;
      a7.n128_u64[0] = v33;
      *v9++ = v33;
    }
  }

  else
  {
    sub_BF8344(a1, v22, a3, a4 >> 1, a5, a6);
    sub_BF8344(v22, a2, a3, v23, v20, a6);

    a7.n128_u64[0] = sub_BF88D0(v9, v22, a2, a3, v21, v23, v20, a6, v25).n128_u64[0];
  }

  return a7.n128_f64[0];
}

__int128 *sub_BF8630(__int128 *result, __int128 *a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  if (a4)
  {
    v5 = a5;
    v8 = result;
    if (a4 == 2)
    {
      v9 = *(a3 + 24);
      if (!v9)
      {
        goto LABEL_38;
      }

      v10 = a2 - 1;
      result = (*(*v9 + 48))(v9, a2 - 1, v8);
      if (result)
      {
        *v5 = *v10;
        v11 = *v8;
      }

      else
      {
        *v5 = *v8;
        v11 = *v10;
      }

      v5[1] = v11;
    }

    else
    {
      if (a4 == 1)
      {
        *a5 = *result;
        return result;
      }

      if (a4 > 8)
      {
        v21 = a4 >> 1;
        v22 = a4 >> 1;
        v23 = &result[v22];
        sub_BF8344(result, &result[v22], a3, v21, a5, v21);
        result = sub_BF8344(&v8[v22], a2, a3, a4 - v21, &v5[v22], a4 - v21);
        v25 = &v8[v22];
        while (v25 != a2)
        {
          v27 = *(a3 + 24);
          if (!v27)
          {
            goto LABEL_38;
          }

          result = (*(*v27 + 48))(v27, v25, v8);
          if (result)
          {
            v28 = *v25++;
            *v5++ = v28;
            if (v8 == v23)
            {
LABEL_33:
              while (v25 != a2)
              {
                v30 = *v25++;
                *v5++ = v30;
              }

              return result;
            }
          }

          else
          {
            v26 = *v8++;
            *v5++ = v26;
            if (v8 == v23)
            {
              goto LABEL_33;
            }
          }
        }

        while (v8 != v23)
        {
          v29 = *v8++;
          *v5++ = v29;
        }
      }

      else if (result != a2)
      {
        v12 = result + 1;
        *a5 = *result;
        if (result + 1 != a2)
        {
          v13 = 0;
          v14 = a5;
          while (1)
          {
            v17 = *(a3 + 24);
            if (!v17)
            {
              break;
            }

            v18 = v14++;
            result = (*(*v17 + 48))(v17, v12, v18);
            v15 = v14;
            if (result)
            {
              *v14 = *v18;
              v15 = v5;
              if (v18 != v5)
              {
                v19 = v13;
                do
                {
                  v20 = *(a3 + 24);
                  if (!v20)
                  {
                    goto LABEL_38;
                  }

                  result = (*(*v20 + 48))(v20, v12, v5 + v19 - 16);
                  if (!result)
                  {
                    v15 = (v5 + v19);
                    goto LABEL_13;
                  }

                  *(v5 + v19) = *(v5 + v19 - 16);
                  v19 -= 16;
                }

                while (v19);
                v15 = v5;
              }
            }

LABEL_13:
            v16 = *v12++;
            *v15 = v16;
            v13 += 16;
            if (v12 == a2)
            {
              return result;
            }
          }

LABEL_38:
          sub_2B7420();
        }
      }
    }
  }

  return result;
}

__n128 sub_BF88D0(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 result)
{
  v50 = a6;
  if (a6)
  {
    while (1)
    {
      if (v50 <= a8 || a5 <= a8)
      {
        sub_BF8E74(a1, a2, a3, a4, a5, v50, a7);
        return result;
      }

      if (!a5)
      {
        return result;
      }

      v13 = 0;
      v14 = -a5;
      while (1)
      {
        v15 = *(a4 + 24);
        if (!v15)
        {
          sub_2B7420();
        }

        if ((*(*v15 + 48))(v15, a2, &a1[v13 / 0x10]))
        {
          break;
        }

        v13 += 16;
        if (__CFADD__(v14++, 1))
        {
          return result;
        }
      }

      v17 = -v14;
      if (-v14 < v50)
      {
        break;
      }

      if (v14 == -1)
      {
        v54 = a1[v13 / 0x10];
        a1[v13 / 0x10] = *a2;
        result = v54;
        *a2 = v54;
        return result;
      }

      v24 = *(a4 + 24);
      if (v24)
      {
        if (v24 == a4)
        {
          v56 = v55;
          (*(*v24 + 24))(v24, v55);
        }

        else
        {
          v56 = (*(*v24 + 16))(v24);
        }
      }

      else
      {
        v56 = 0;
      }

      v45 = v17 / 2;
      v19 = &a1[v17 / 2 + v13 / 0x10];
      v18 = a2;
      if (a2 != a3)
      {
        v25 = a3 - a2;
        v18 = a2;
        do
        {
          if (!v56)
          {
            sub_2B7420();
          }

          v26 = &v18[v25 >> 1];
          v27 = (*(*v56 + 48))(v56, v26, v19);
          if (v27)
          {
            v25 += ~(v25 >> 1);
          }

          else
          {
            v25 >>= 1;
          }

          if (v27)
          {
            v18 = v26 + 1;
          }
        }

        while (v25);
      }

      if (v56 == v55)
      {
        (*(*v56 + 32))(v56);
      }

      else if (v56)
      {
        (*(*v56 + 40))();
      }

      v46 = v18 - a2;
      v22 = v18;
      v23 = a2 - v19;
      if (a2 != v19)
      {
        goto LABEL_41;
      }

LABEL_63:
      a5 = -v14 - v45;
      v44 = v50 - v46;
      if (v45 + v46 >= v50 - (v45 + v46) - v14)
      {
        sub_BF88D0(v22, v18, a3, a4, -v14 - v45, v50 - v46, a7, a8);
        a2 = v19;
        a5 = v45;
        a3 = v22;
        a1 = (a1 + v13);
        v50 = v46;
        if (!v46)
        {
          return result;
        }
      }

      else
      {
        sub_BF88D0(&a1[v13 / 0x10], v19, v22, a4, v45, v46, a7, a8);
        a1 = v22;
        a2 = v18;
        v50 -= v46;
        if (!v44)
        {
          return result;
        }
      }
    }

    v46 = v50 / 2;
    v18 = &a2[v50 / 2];
    v19 = a2;
    if (a2 - a1 != v13)
    {
      v20 = (a2 - a1 - v13) >> 4;
      v19 = &a1[v13 / 0x10];
      do
      {
        v21 = *(a4 + 24);
        if (!v21)
        {
          sub_2B7420();
        }

        if ((*(*v21 + 48))(v21, v18, &v19[v20 >> 1]))
        {
          v20 >>= 1;
        }

        else
        {
          v19 += (v20 >> 1) + 1;
          v20 += ~(v20 >> 1);
        }
      }

      while (v20);
    }

    v45 = (v19 - a1 - v13) >> 4;
    v22 = &a2[v50 / 2];
    v23 = a2 - v19;
    if (a2 == v19)
    {
      goto LABEL_63;
    }

LABEL_41:
    v22 = v19;
    if (a2 != v18)
    {
      if (v19 + 1 == a2)
      {
        v51 = *v19;
        memmove(v19, a2, v18 - a2);
        v22 = (v19 + v18 - a2);
        *v22 = v51;
      }

      else if (a2 + 1 == v18)
      {
        v22 = v19 + 1;
        v52 = *(v18 - 1);
        if (v18 - 1 != v19)
        {
          memmove(v19 + 1, v19, (v18 - 1) - v19);
        }

        *v19 = v52;
      }

      else
      {
        v28 = v23 >> 4;
        v29 = v18 - a2;
        if (v23 >> 4 == v29)
        {
          v30 = v19 + 1;
          v31 = a2 + 1;
          do
          {
            v53 = *(v30 - 1);
            *(v30 - 1) = *(v31 - 1);
            *(v31 - 1) = v53;
            if (v30 == a2)
            {
              break;
            }

            ++v30;
          }

          while (v31++ != v18);
          v22 = a2;
        }

        else
        {
          v33 = v23 >> 4;
          do
          {
            v34 = v33;
            v33 = v29;
            v29 = v34 % v29;
          }

          while (v29);
          v35 = &v19[v33];
          do
          {
            v36 = *--v35;
            v37 = (v35 + v23);
            v38 = v35;
            do
            {
              v39 = v37;
              *v38 = *v37;
              v40 = v18 - v37;
              v41 = __OFSUB__(v28, v40);
              v43 = v28 - v40;
              v42 = (v43 < 0) ^ v41;
              v37 = &v19[v43];
              if (v42)
              {
                v37 = &v39[v28];
              }

              v38 = v39;
            }

            while (v37 != v35);
            *v39 = v36;
          }

          while (v35 != v19);
          v22 = (v19 + v18 - a2);
        }
      }
    }

    goto LABEL_63;
  }

  return result;
}

void sub_BF8E48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_BF4098(va);
  _Unwind_Resume(a1);
}

void sub_BF8E5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_BF4098(va);
  _Unwind_Resume(a1);
}

__int128 *sub_BF8E74(__int128 *__dst, __int128 *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t __src)
{
  v7 = __src;
  v9 = a3;
  v10 = a2;
  v11 = __dst;
  if (a5 <= a6)
  {
    if (__dst != a2)
    {
      v16 = -__src;
      v17 = __src;
      v18 = __dst;
      do
      {
        v19 = *v18++;
        *v17 = v19;
        v17 += 16;
        v16 -= 16;
      }

      while (v18 != a2);
      while (v10 != v9)
      {
        v21 = *(a4 + 24);
        if (!v21)
        {
LABEL_33:
          sub_2B7420();
        }

        __dst = (*(*v21 + 48))(v21, v10, v7);
        if (__dst)
        {
          v22 = *v10++;
          *v11++ = v22;
          if (v17 == v7)
          {
            return __dst;
          }
        }

        else
        {
          v20 = *v7;
          v7 += 16;
          *v11++ = v20;
          if (v17 == v7)
          {
            return __dst;
          }
        }
      }

      return memmove(v11, v7, -&v7[v16]);
    }
  }

  else if (a2 != a3)
  {
    v12 = 0;
    do
    {
      *(__src + v12 * 16) = a2[v12];
      ++v12;
    }

    while (&a2[v12] != a3);
    v13 = (__src + v12 * 16);
    while (v10 != v11)
    {
      v14 = *(a4 + 24);
      if (!v14)
      {
        goto LABEL_33;
      }

      __dst = (*(*v14 + 48))(v14, v13 - 16, v10 - 1);
      if (__dst)
      {
        v15 = (v10 - 1);
      }

      else
      {
        v15 = v13 - 16;
      }

      *--v9 = *v15;
      if (__dst)
      {
        --v10;
      }

      else
      {
        v13 -= 16;
      }

      if (v13 == v7)
      {
        return __dst;
      }
    }

    if (v13 != v7)
    {
      v23 = 0xFFFFFFFFFFFFFFFLL;
      do
      {
        v9[v23--] = *(v13 - 1);
        v13 -= 16;
      }

      while (v13 != v7);
    }
  }

  return __dst;
}

void sub_BF904C(uint64_t a1, __n128 *a2, uint64_t a3, unint64_t a4, _OWORD *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
        sub_2B7420();
      }

      v8 = a2 - 7;
      if ((*(*v7 + 48))(v7, a2 - 7, a1))
      {
        v34 = *(a1 + 16);
        v35 = *(a1 + 32);
        v36 = *(a1 + 48);
        v10 = *(a1 + 80);
        v37 = *(a1 + 64);
        v33 = *a1;
        v11 = *(a1 + 96);
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        *(a1 + 80) = 0;
        v12 = *(a1 + 104);
        v14 = v8[3];
        v13 = v8[4];
        v15 = v8[2];
        *(a1 + 16) = v8[1];
        *(a1 + 32) = v15;
        *(a1 + 48) = v14;
        *(a1 + 64) = v13;
        *a1 = *v8;
        *(a1 + 80) = a2[-2];
        *(a1 + 96) = a2[-1].n128_u64[0];
        *(a1 + 104) = a2[-1].n128_u8[8];
        v8[1] = v34;
        v8[2] = v35;
        v8[3] = v36;
        v8[4] = v37;
        *v8 = v33;
        a2[-2] = v10;
        a2[-1].n128_u64[0] = v11;
        a2[-1].n128_u8[8] = v12;
      }
    }

    else if (a4 <= 0)
    {

      sub_BF9318(a1, a2, a3);
    }

    else
    {
      v17 = a4 >> 1;
      v18 = (a1 + 112 * (a4 >> 1));
      if (a4 <= a6)
      {
        v32 = 0;
        v33.n128_u64[0] = a5;
        v33.n128_u64[1] = &v32;
        sub_BF9550(a1, (a1 + 112 * (a4 >> 1)), a3, a4 >> 1, a5);
        v32 = v17;
        v26 = a4 - v17;
        v27 = &a5[7 * v17];
        sub_BF9550(v18, a2, a3, v26, v27);
        v32 = a4;
        sub_BF982C(a5, v27, v27, &a5[7 * a4], a1, a3);
        if (a5)
        {
          v28 = v32;
          if (v32)
          {
            v29 = 0;
            v30 = a5 + 11;
            do
            {
              v31 = *(v30 - 1);
              if (v31)
              {
                *v30 = v31;
                operator delete(v31);
                v28 = v32;
              }

              ++v29;
              v30 += 14;
            }

            while (v29 < v28);
          }
        }
      }

      else
      {
        sub_BF904C(a1, a1 + 112 * (a4 >> 1), a3, a4 >> 1, a5, a6);
        v23 = a4 - v17;
        sub_BF904C(v18, a2, a3, v23, a5, a6);

        sub_BF9AE8(a1, v18, a2, a3, v17, v23, a5, a6);
      }
    }
  }
}

void sub_BF9304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

void sub_BF9318(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 7;
    if (a1 + 7 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = *(a3 + 24);
        if (!v9)
        {
          sub_2B7420();
        }

        v10 = v5;
        if ((*(*v9 + 48))(v9, v5, v8))
        {
          v31 = *v10;
          v11 = v10[1];
          v12 = v10[2];
          v13 = v10[4];
          v34 = v10[3];
          v35 = v13;
          v32 = v11;
          v33 = v12;
          *v36 = v8[12];
          *&v36[16] = *(v8 + 26);
          *(v8 + 24) = 0;
          *(v8 + 25) = 0;
          *(v8 + 26) = 0;
          v37 = *(v8 + 216);
          v14 = v7;
          while (1)
          {
            v15 = v14;
            v16 = a1 + v14;
            v17 = *(a1 + v14 + 48);
            *(v16 + 144) = *(a1 + v14 + 32);
            *(v16 + 160) = v17;
            *(v16 + 176) = *(a1 + v14 + 64);
            v18 = *(a1 + v14 + 16);
            *(v16 + 112) = *(a1 + v14);
            *(v16 + 128) = v18;
            v20 = a1 + v14 + 192;
            v19 = *v20;
            if (*v20)
            {
              *(v16 + 200) = v19;
              operator delete(v19);
              *v20 = 0;
              *(v20 + 8) = 0;
              *(v20 + 16) = 0;
            }

            *v20 = *(v16 + 80);
            *(v16 + 208) = *(v16 + 96);
            *(v16 + 80) = 0;
            *(v16 + 88) = 0;
            *(v16 + 96) = 0;
            *(v16 + 216) = *(v16 + 104);
            if (!v15)
            {
              break;
            }

            v21 = *(a3 + 24);
            if (!v21)
            {
              sub_2B7420();
            }

            v22 = (*(*v21 + 48))(v21, &v31, a1 + v15 - 112);
            v14 = v15 - 112;
            if ((v22 & 1) == 0)
            {
              v23 = (a1 + v15);
              goto LABEL_16;
            }
          }

          v23 = a1;
LABEL_16:
          *v23 = v31;
          v24 = v32;
          v25 = v33;
          v26 = v35;
          v23[3] = v34;
          v23[4] = v26;
          v23[1] = v24;
          v23[2] = v25;
          v27 = a1 + v15;
          v30 = *(v27 + 80);
          v29 = (v27 + 80);
          v28 = v30;
          if (v30)
          {
            *(v23 + 11) = v28;
            operator delete(v28);
            *v29 = 0;
            v29[1] = 0;
            v29[2] = 0;
          }

          *v29 = *v36;
          *(v23 + 88) = *&v36[8];
          memset(v36, 0, sizeof(v36));
          *(v23 + 104) = v37;
        }

        v5 = v10 + 7;
        v7 += 112;
        v8 = v10;
      }

      while (v10 + 7 != a2);
    }
  }
}

void sub_BF952C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    v20 = a1;
    operator delete(__p);
    a1 = v20;
  }

  _Unwind_Resume(a1);
}

void sub_BF9550(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v9 = *(a3 + 24);
      if (!v9)
      {
        sub_2B7420();
      }

      v12 = a2 - 7;
      if ((*(*v9 + 48))(v9, a2 - 7, a1))
      {
        *a5 = *v12;
        v13 = v12[1];
        v14 = v12[2];
        v15 = v12[4];
        *(a5 + 48) = v12[3];
        *(a5 + 64) = v15;
        *(a5 + 16) = v13;
        *(a5 + 32) = v14;
        *(a5 + 88) = 0;
        *(a5 + 96) = 0;
        *(a5 + 80) = 0;
        *(a5 + 80) = a2[-2];
        *(a5 + 96) = a2[-1].n128_u64[0];
        a2[-2].n128_u64[0] = 0;
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        *(a5 + 104) = a2[-1].n128_u8[8];
        *(a5 + 112) = *a1;
        v16 = *(a1 + 16);
        v17 = *(a1 + 32);
        v18 = *(a1 + 64);
        *(a5 + 160) = *(a1 + 48);
        *(a5 + 176) = v18;
        *(a5 + 128) = v16;
        *(a5 + 144) = v17;
        *(a5 + 200) = 0;
        *(a5 + 208) = 0;
        *(a5 + 192) = 0;
        *(a5 + 192) = *(a1 + 80);
        *(a5 + 208) = *(a1 + 96);
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        v19 = (a1 + 104);
      }

      else
      {
        *a5 = *a1;
        v26 = *(a1 + 16);
        v27 = *(a1 + 32);
        v28 = *(a1 + 64);
        *(a5 + 48) = *(a1 + 48);
        *(a5 + 64) = v28;
        *(a5 + 16) = v26;
        *(a5 + 32) = v27;
        *(a5 + 88) = 0;
        *(a5 + 96) = 0;
        *(a5 + 80) = 0;
        *(a5 + 80) = *(a1 + 80);
        *(a5 + 96) = *(a1 + 96);
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        *(a5 + 104) = *(a1 + 104);
        *(a5 + 112) = *v12;
        v29 = v12[1];
        v30 = v12[2];
        v31 = v12[4];
        *(a5 + 160) = v12[3];
        *(a5 + 176) = v31;
        *(a5 + 128) = v29;
        *(a5 + 144) = v30;
        *(a5 + 200) = 0;
        *(a5 + 208) = 0;
        *(a5 + 192) = 0;
        *(a5 + 192) = a2[-2];
        *(a5 + 208) = a2[-1].n128_u64[0];
        a2[-2].n128_u64[0] = 0;
        a2[-2].n128_u64[1] = 0;
        a2[-1].n128_u64[0] = 0;
        v19 = &a2[-1].n128_u8[8];
      }

      *(a5 + 216) = *v19;
    }

    else if (a4 == 1)
    {
      *a5 = *a1;
      v6 = *(a1 + 16);
      v7 = *(a1 + 32);
      v8 = *(a1 + 64);
      *(a5 + 48) = *(a1 + 48);
      *(a5 + 64) = v8;
      *(a5 + 16) = v6;
      *(a5 + 32) = v7;
      *(a5 + 88) = 0;
      *(a5 + 96) = 0;
      *(a5 + 80) = 0;
      *(a5 + 80) = *(a1 + 80);
      *(a5 + 96) = *(a1 + 96);
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      *(a5 + 104) = *(a1 + 104);
    }

    else if (a4 > 8)
    {
      v20 = a4 >> 1;
      v21 = 112 * (a4 >> 1);
      sub_BF904C(a1, v21 + a1, a3, v20, a5, v20);
      sub_BF904C(v21 + a1, a2, a3, a4 - v20, a5 + v21, a4 - v20);

      sub_BFA528(a1, (v21 + a1), (v21 + a1), a2, a5, a3);
    }

    else
    {

      sub_BFA20C(a1, a2, a5, a3);
    }
  }
}

void sub_BF9818(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

__n128 sub_BF982C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a2)
  {
LABEL_18:
    if (a3 != a4)
    {
      v27 = a5 + 80;
      do
      {
        *(v27 - 80) = *a3;
        v28 = *(a3 + 16);
        v29 = *(a3 + 32);
        v30 = *(a3 + 64);
        *(v27 - 32) = *(a3 + 48);
        *(v27 - 16) = v30;
        *(v27 - 64) = v28;
        *(v27 - 48) = v29;
        v31 = *v27;
        if (*v27)
        {
          *(v27 + 8) = v31;
          operator delete(v31);
          *v27 = 0;
          *(v27 + 8) = 0;
          *(v27 + 16) = 0;
        }

        result = *(a3 + 80);
        *v27 = result;
        *(v27 + 16) = *(a3 + 96);
        *(a3 + 80) = 0;
        *(a3 + 88) = 0;
        *(a3 + 96) = 0;
        *(v27 + 24) = *(a3 + 104);
        a3 += 112;
        v27 += 112;
      }

      while (a3 != a4);
    }
  }

  else
  {
    v10 = a1;
    v11 = a5 + 80;
    while (a3 != a4)
    {
      v13 = *(a6 + 24);
      if (!v13)
      {
        sub_2B7420();
      }

      v14 = (v11 - 80);
      if ((*(*v13 + 48))(v13, a3, v10))
      {
        *v14 = *a3;
        v15 = *(a3 + 16);
        v16 = *(a3 + 32);
        v17 = *(a3 + 64);
        *(v11 - 32) = *(a3 + 48);
        *(v11 - 16) = v17;
        *(v11 - 64) = v15;
        *(v11 - 48) = v16;
        v18 = *v11;
        if (*v11)
        {
          *(v11 + 8) = v18;
          operator delete(v18);
          *v11 = 0;
          *(v11 + 8) = 0;
          *(v11 + 16) = 0;
        }

        result = *(a3 + 80);
        *v11 = result;
        *(v11 + 16) = *(a3 + 96);
        *(a3 + 80) = 0;
        *(a3 + 88) = 0;
        *(a3 + 96) = 0;
        *(v11 + 24) = *(a3 + 104);
        a3 += 112;
        v11 += 112;
        if (v10 == a2)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *v14 = *v10;
        v19 = *(v10 + 16);
        v20 = *(v10 + 32);
        v21 = *(v10 + 64);
        *(v11 - 32) = *(v10 + 48);
        *(v11 - 16) = v21;
        *(v11 - 64) = v19;
        *(v11 - 48) = v20;
        v22 = *v11;
        if (*v11)
        {
          *(v11 + 8) = v22;
          operator delete(v22);
          *v11 = 0;
          *(v11 + 8) = 0;
          *(v11 + 16) = 0;
        }

        result = *(v10 + 80);
        *v11 = result;
        *(v11 + 16) = *(v10 + 96);
        *(v10 + 80) = 0;
        *(v10 + 88) = 0;
        *(v10 + 96) = 0;
        *(v11 + 24) = *(v10 + 104);
        v10 += 112;
        v11 += 112;
        if (v10 == a2)
        {
LABEL_17:
          a5 = v11 - 80;
          goto LABEL_18;
        }
      }
    }

    while (v10 != a2)
    {
      *(v11 - 80) = *v10;
      v23 = *(v10 + 16);
      v24 = *(v10 + 32);
      v25 = *(v10 + 64);
      *(v11 - 32) = *(v10 + 48);
      *(v11 - 16) = v25;
      *(v11 - 64) = v23;
      *(v11 - 48) = v24;
      v26 = *v11;
      if (*v11)
      {
        *(v11 + 8) = v26;
        operator delete(v26);
        *v11 = 0;
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
      }

      result = *(v10 + 80);
      *v11 = result;
      *(v11 + 16) = *(v10 + 96);
      *(v10 + 80) = 0;
      *(v10 + 88) = 0;
      *(v10 + 96) = 0;
      *(v11 + 24) = *(v10 + 104);
      v10 += 112;
      v11 += 112;
    }
  }

  return result;
}

uint64_t *sub_BF9A70(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      v6 = (v2 + 88);
      do
      {
        v7 = *(v6 - 1);
        if (v7)
        {
          *v6 = v7;
          operator delete(v7);
          v4 = *v3;
        }

        ++v5;
        v6 += 14;
      }

      while (v5 < v4);
    }
  }

  return a1;
}

__n128 sub_BF9AE8(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7, uint64_t a8)
{
  v61 = a6;
  if (a6)
  {
    while (1)
    {
      if (v61 <= a8 || a5 <= a8)
      {
        sub_BFA76C(a1, a2, a3, a4, a5, v61, a7);
        return result;
      }

      if (!a5)
      {
        return result;
      }

      v12 = 0;
      v13 = -a5;
      while (1)
      {
        v14 = *(a4 + 24);
        if (!v14)
        {
          sub_2B7420();
        }

        if ((*(*v14 + 48))(v14, a2, &a1[v12 / 0x10]))
        {
          break;
        }

        v12 += 112;
        if (__CFADD__(v13++, 1))
        {
          return result;
        }
      }

      v17 = -v13;
      if (-v13 >= v61)
      {
        if (v13 == -1)
        {
          v50 = &a1[v12 / 0x10];
          v65 = a1[v12 / 0x10];
          v77 = a1[v12 / 0x10 + 3];
          v81 = a1[v12 / 0x10 + 4];
          v69 = a1[v12 / 0x10 + 1];
          v73 = a1[v12 / 0x10 + 2];
          v51 = a1[v12 / 0x10 + 6].n128_u64[0];
          result = a1[v12 / 0x10 + 5];
          v50[5].n128_u64[0] = 0;
          v50[5].n128_u64[1] = 0;
          v50[6].n128_u64[0] = 0;
          v52 = a1[v12 / 0x10 + 6].n128_u8[8];
          v54 = a2[1];
          v53 = a2[2];
          v55 = a2[4];
          v50[3] = a2[3];
          v50[4] = v55;
          v50[1] = v54;
          v50[2] = v53;
          *v50 = *a2;
          v50[5] = a2[5];
          v50[6].n128_u64[0] = a2[6].n128_u64[0];
          v50[6].n128_u8[8] = a2[6].n128_u8[8];
          a2[2] = v73;
          a2[3] = v77;
          *a2 = v65;
          a2[1] = v69;
          a2[4] = v81;
          a2[5] = result;
          a2[6].n128_u64[0] = v51;
          a2[6].n128_u8[8] = v52;
          return result;
        }

        v23 = *(a4 + 24);
        if (v23)
        {
          if (v23 == a4)
          {
            v83 = v82;
            (*(*v23 + 24))(v23, v82);
          }

          else
          {
            v83 = (*(*v23 + 16))(v23);
          }
        }

        else
        {
          v83 = 0;
        }

        v56 = v17 / 2;
        v19 = &a1[7 * (v17 / 2) + v12 / 0x10];
        v18 = a2;
        if (a2 != a3)
        {
          v24 = 0x6DB6DB6DB6DB6DB7 * ((a3 - a2) >> 4);
          v18 = a2;
          do
          {
            if (!v83)
            {
              sub_2B7420();
            }

            v25 = &v18[7 * (v24 >> 1)];
            v26 = (*(*v83 + 48))(v83, v25, v19);
            if (v26)
            {
              v24 += ~(v24 >> 1);
            }

            else
            {
              v24 >>= 1;
            }

            if (v26)
            {
              v18 = v25 + 7;
            }
          }

          while (v24);
        }

        if (v83 == v82)
        {
          (*(*v83 + 32))(v83);
        }

        else if (v83)
        {
          (*(*v83 + 40))();
        }

        v57 = 0x6DB6DB6DB6DB6DB7 * (v18 - a2);
        v22 = v18;
        if (a2 != v19)
        {
LABEL_41:
          v22 = v19;
          if (a2 != v18)
          {
            v22 = v19 + 7;
            v27 = v19 + 7;
            v28 = a2;
            while (1)
            {
              v62 = v27[-7];
              v74 = v27[-4];
              v78 = v27[-3];
              v66 = v27[-6];
              v70 = v27[-5];
              v29 = v27[-1].n128_i64[0];
              v30 = v27[-2];
              v27[-2].n128_u64[0] = 0;
              v27[-2].n128_u64[1] = 0;
              v27[-1].n128_u64[0] = 0;
              v31 = v27[-1].n128_i8[8];
              v33 = v28[1];
              v32 = v28[2];
              v34 = v28[4];
              v27[-4] = v28[3];
              v27[-3] = v34;
              v27[-6] = v33;
              v27[-5] = v32;
              v27[-7] = *v28;
              v27[-2] = v28[5];
              v27[-1].n128_u64[0] = v28[6].n128_u64[0];
              v27[-1].n128_u8[8] = v28[6].n128_u8[8];
              v28[2] = v70;
              v28[3] = v74;
              *v28 = v62;
              v28[1] = v66;
              v28[4] = v78;
              v28[5] = v30;
              v28[6].n128_u64[0] = v29;
              v28[6].n128_u8[8] = v31;
              v28 += 7;
              if (v28 == v18)
              {
                break;
              }

              if (v27 == a2)
              {
                a2 = v28;
              }

              v27 += 7;
              v22 += 7;
            }

            if (v27 != a2)
            {
              v35 = a2;
              while (1)
              {
                v63 = *v27;
                v75 = v27[3];
                v79 = v27[4];
                v67 = v27[1];
                v71 = v27[2];
                v36 = v27[6].n128_i64[0];
                v37 = v27[5];
                v27[5].n128_u64[1] = 0;
                v27[6].n128_u64[0] = 0;
                v27[5].n128_u64[0] = 0;
                v38 = v27[6].n128_i8[8];
                *v27 = *v35;
                v39 = v35[4];
                v41 = v35[1];
                v40 = v35[2];
                v27[3] = v35[3];
                v27[4] = v39;
                v27[1] = v41;
                v27[2] = v40;
                v27[5] = v35[5];
                v27[6].n128_u64[0] = v35[6].n128_u64[0];
                v27[6].n128_u8[8] = v35[6].n128_u8[8];
                v35[3] = v75;
                v35[4] = v79;
                v35[1] = v67;
                v35[2] = v71;
                *v35 = v63;
                v35[5] = v37;
                v35[6].n128_u64[0] = v36;
                v35[6].n128_u8[8] = v38;
                v27 += 7;
                v35 += 7;
                v42 = v27 == a2;
                if (v35 == v18)
                {
                  if (v27 == a2)
                  {
                    break;
                  }

                  v35 = a2 + 7;
                  while (1)
                  {
                    v64 = *v27;
                    v76 = v27[3];
                    v80 = v27[4];
                    v68 = v27[1];
                    v72 = v27[2];
                    v43 = v27[6].n128_i64[0];
                    v44 = v27[5];
                    v27[5].n128_u64[1] = 0;
                    v27[6].n128_u64[0] = 0;
                    v27[5].n128_u64[0] = 0;
                    v45 = v27[6].n128_i8[8];
                    v47 = a2[1];
                    v46 = a2[2];
                    v48 = a2[4];
                    v27[3] = a2[3];
                    v27[4] = v48;
                    v27[1] = v47;
                    v27[2] = v46;
                    *v27 = *a2;
                    v27[5] = a2[5];
                    v27[6].n128_u64[0] = a2[6].n128_u64[0];
                    v27[6].n128_u8[8] = a2[6].n128_u8[8];
                    *a2 = v64;
                    a2[3] = v76;
                    a2[4] = v80;
                    a2[1] = v68;
                    a2[2] = v72;
                    a2[5] = v44;
                    a2[6].n128_u64[0] = v43;
                    a2[6].n128_u8[8] = v45;
                    v27 += 7;
                    v42 = v27 == a2;
                    if (v35 != v18)
                    {
                      break;
                    }

                    if (v27 == a2)
                    {
                      goto LABEL_56;
                    }
                  }
                }

                if (v42)
                {
                  a2 = v35;
                }
              }
            }
          }
        }
      }

      else
      {
        v57 = v61 / 2;
        v18 = &a2[7 * (v61 / 2)];
        v19 = a2;
        if (a2 - a1 != v12)
        {
          v20 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1 - v12) >> 4);
          v19 = &a1[v12 / 0x10];
          do
          {
            v21 = *(a4 + 24);
            if (!v21)
            {
              sub_2B7420();
            }

            if ((*(*v21 + 48))(v21, v18, &v19[7 * (v20 >> 1)]))
            {
              v20 >>= 1;
            }

            else
            {
              v19 += 7 * (v20 >> 1) + 7;
              v20 += ~(v20 >> 1);
            }
          }

          while (v20);
        }

        v56 = 0x6DB6DB6DB6DB6DB7 * ((v19 - a1 - v12) >> 4);
        v22 = &a2[7 * (v61 / 2)];
        if (a2 != v19)
        {
          goto LABEL_41;
        }
      }

LABEL_56:
      a5 = -v13 - v56;
      v49 = v61 - v57;
      if (v56 + v57 >= v61 - (v56 + v57) - v13)
      {
        sub_BF9AE8(v22, v18, a3, a4, -v13 - v56, v61 - v57, a7, a8);
        a2 = v19;
        a5 = v56;
        a3 = v22;
        a1 = (a1 + v12);
        v61 = v57;
        if (!v57)
        {
          return result;
        }
      }

      else
      {
        sub_BF9AE8(&a1[v12 / 0x10], v19, v22, a4, v56, v57, a7, a8);
        a1 = v22;
        a2 = v18;
        v61 -= v57;
        if (!v49)
        {
          return result;
        }
      }
    }
  }

  return result;
}

__n128 sub_BFA20C(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a1;
    v7 = *(a1 + 16);
    v8 = *(a1 + 32);
    v9 = *(a1 + 64);
    *(a3 + 48) = *(a1 + 48);
    *(a3 + 64) = v9;
    *(a3 + 16) = v7;
    *(a3 + 32) = v8;
    *a3 = *a1;
    *(a3 + 88) = 0;
    *(a3 + 96) = 0;
    *(a3 + 80) = 0;
    result = *(a1 + 80);
    *(a3 + 80) = result;
    *(a3 + 96) = *(a1 + 96);
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    *(a3 + 104) = *(a1 + 104);
    v37 = 1;
    v11 = (a1 + 112);
    if ((a1 + 112) != a2)
    {
      v13 = 0;
      v14 = a3;
      do
      {
        while (1)
        {
          v18 = *(a4 + 24);
          if (!v18)
          {
LABEL_20:
            sub_2B7420();
          }

          v19 = v11;
          v20 = v14 + 7;
          if ((*(*v18 + 48))(v18, v11, v14))
          {
            break;
          }

          *v20 = *v19;
          v15 = v19[1];
          v16 = v19[2];
          v17 = v19[4];
          v14[10] = v19[3];
          v14[11] = v17;
          v14[8] = v15;
          v14[9] = v16;
          v14[12].n128_u64[1] = 0;
          v14[13].n128_u64[0] = 0;
          v14[12].n128_u64[0] = 0;
          result = v6[12];
          v14[12] = result;
          v14[13].n128_u64[0] = v6[13].n128_u64[0];
          v6[12].n128_u64[0] = 0;
          v6[12].n128_u64[1] = 0;
          v6[13].n128_u64[0] = 0;
          v14[13].n128_u8[8] = v6[13].n128_u8[8];
          ++v37;
          v11 = v19 + 7;
          v13 += 112;
          v14 += 7;
          v6 = v19;
          if (&v19[7] == a2)
          {
            return result;
          }
        }

        v21 = v14[3];
        v14[9] = v14[2];
        v14[10] = v21;
        v22 = v14[5];
        v14[11] = v14[4];
        v23 = v14[1];
        *v20 = *v14;
        v14[8] = v23;
        v14[12] = v22;
        v14[13].n128_u64[0] = v14[6].n128_u64[0];
        v14[5].n128_u64[0] = 0;
        v14[5].n128_u64[1] = 0;
        v14[13].n128_u8[8] = v14[6].n128_u8[8];
        ++v37;
        v24 = a3;
        v14[6].n128_u64[0] = 0;
        if (v14 != a3)
        {
          v25 = v13;
          do
          {
            v26 = *(a4 + 24);
            if (!v26)
            {
              goto LABEL_20;
            }

            v27 = (a3 + v25);
            if (!(*(*v26 + 48))(v26, v19, a3 + v25 - 112))
            {
              v24 = (a3 + v25);
              goto LABEL_16;
            }

            v28 = *(a3 + v25 - 64);
            v27[2] = *(a3 + v25 - 80);
            v27[3] = v28;
            v27[4] = *(a3 + v25 - 48);
            v29 = *(a3 + v25 - 96);
            *v27 = *(a3 + v25 - 112);
            v27[1] = v29;
            v30 = a3 + v25;
            v32 = (a3 + v25 + 80);
            v31 = *v32;
            if (*v32)
            {
              *(v30 + 88) = v31;
              operator delete(v31);
              *v32 = 0;
              *(a3 + v25 + 88) = 0;
              *(a3 + v25 + 96) = 0;
            }

            *v32 = *(v30 - 32);
            *(v30 + 96) = *(v30 - 16);
            *(v30 - 24) = 0;
            *(v30 - 16) = 0;
            *(v30 - 32) = 0;
            *(v30 + 104) = *(v30 - 8);
            v25 -= 112;
          }

          while (v25);
          v24 = a3;
        }

LABEL_16:
        *v24 = *v19;
        v33 = v19[1];
        v34 = v19[2];
        v35 = v19[4];
        v24[3] = v19[3];
        v24[4] = v35;
        v24[1] = v33;
        v24[2] = v34;
        v36 = v24[5].n128_u64[0];
        if (v36)
        {
          v24[5].n128_u64[1] = v36;
          operator delete(v36);
          v24[5].n128_u64[0] = 0;
          v24[5].n128_u64[1] = 0;
          v24[6].n128_u64[0] = 0;
        }

        result = v6[12];
        v24[5] = result;
        v24[6].n128_u64[0] = v6[13].n128_u64[0];
        v6[12].n128_u64[0] = 0;
        v6[12].n128_u64[1] = 0;
        v6[13].n128_u64[0] = 0;
        v24[6].n128_u8[8] = v6[13].n128_u8[8];
        v11 = v19 + 7;
        v13 += 112;
        v14 = v20;
        v6 = v19;
      }

      while (&v19[7] != a2);
    }
  }

  return result;
}

void sub_BFA4EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

void sub_BFA500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

void sub_BFA514(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

__n128 sub_BFA528(void *a1, void *a2, void *a3, void *a4, _BYTE *a5, uint64_t a6)
{
  v33 = 0;
  if (a1 == a2)
  {
LABEL_15:
    while (a3 != a4)
    {
      *a5 = *a3;
      v30 = *(a3 + 1);
      v31 = *(a3 + 2);
      v32 = *(a3 + 4);
      *(a5 + 3) = *(a3 + 3);
      *(a5 + 4) = v32;
      *(a5 + 1) = v30;
      *(a5 + 2) = v31;
      *(a5 + 11) = 0;
      *(a5 + 12) = 0;
      *(a5 + 10) = 0;
      result = *(a3 + 5);
      *(a5 + 5) = result;
      *(a5 + 12) = a3[12];
      a3[10] = 0;
      a3[11] = 0;
      a3[12] = 0;
      a5[104] = *(a3 + 104);
      a3 += 14;
      a5 += 112;
    }
  }

  else
  {
    v10 = a1;
    v11 = a5 + 104;
    while (a3 != a4)
    {
      v17 = *(a6 + 24);
      if (!v17)
      {
        sub_2B7420();
      }

      v18 = (*(*v17 + 48))(v17, a3, v10);
      v19 = v11 - 104;
      v20 = v11 - 24;
      if (v18)
      {
        *v19 = *a3;
        v21 = *(a3 + 1);
        v22 = *(a3 + 2);
        v23 = *(a3 + 4);
        *(v11 - 56) = *(a3 + 3);
        *(v11 - 40) = v23;
        *(v11 - 88) = v21;
        *(v11 - 72) = v22;
        *(v11 - 2) = 0;
        *(v11 - 1) = 0;
        *v20 = 0;
        result = *(a3 + 5);
        *(v11 - 24) = result;
        *(v11 - 1) = a3[12];
        a3[10] = 0;
        a3[11] = 0;
        a3[12] = 0;
        v16 = a3;
        a3 += 14;
      }

      else
      {
        *v19 = *v10;
        v12 = *(v10 + 1);
        v13 = *(v10 + 2);
        v14 = *(v10 + 4);
        *(v11 - 56) = *(v10 + 3);
        *(v11 - 40) = v14;
        *(v11 - 88) = v12;
        *(v11 - 72) = v13;
        *(v11 - 2) = 0;
        *(v11 - 1) = 0;
        *v20 = 0;
        result = *(v10 + 5);
        *(v11 - 24) = result;
        *(v11 - 1) = v10[12];
        v10[10] = 0;
        v10[11] = 0;
        v10[12] = 0;
        v16 = v10;
        v10 += 14;
      }

      *v11 = v16[104];
      v11 += 112;
      ++v33;
      if (v10 == a2)
      {
        a5 = v11 - 104;
        goto LABEL_15;
      }
    }

    if (v10 != a2)
    {
      v24 = 0;
      do
      {
        v25 = &v11[v24 * 8];
        v26 = &v10[v24];
        *(v25 - 104) = *&v10[v24];
        v27 = *&v10[v24 + 2];
        v28 = *&v10[v24 + 4];
        v29 = *&v10[v24 + 6];
        *(v25 - 40) = *&v10[v24 + 8];
        *(v25 - 56) = v29;
        *(v25 - 72) = v28;
        *(v25 - 88) = v27;
        *(v25 - 2) = 0;
        *(v25 - 1) = 0;
        *(v25 - 3) = 0;
        result = *&v10[v24 + 10];
        *(v25 - 24) = result;
        *(v25 - 1) = v10[v24 + 12];
        v26[10] = 0;
        v26[11] = 0;
        v26[12] = 0;
        *v25 = v10[v24 + 13];
        v24 += 14;
      }

      while (v26 + 14 != a2);
    }
  }

  return result;
}

void sub_BFA744(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

void sub_BFA758(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

void sub_BFA76C(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _OWORD *a7)
{
  v30 = 0;
  v28 = a7;
  v29 = &v30;
  if (a5 > a6)
  {
    v10 = a7;
    if (a2 != a3)
    {
      v11 = 0;
      v10 = a7;
      v12 = a2;
      do
      {
        *v10 = *v12;
        v13 = v12[1];
        v14 = v12[2];
        v15 = v12[4];
        *(v10 + 48) = v12[3];
        *(v10 + 64) = v15;
        *(v10 + 16) = v13;
        *(v10 + 32) = v14;
        *(v10 + 88) = 0;
        *(v10 + 96) = 0;
        *(v10 + 80) = 0;
        *(v10 + 80) = v12[5];
        *(v10 + 96) = v12[6].n128_u64[0];
        v12[5].n128_u64[0] = 0;
        v12[5].n128_u64[1] = 0;
        v12[6].n128_u64[0] = 0;
        *(v10 + 104) = v12[6].n128_u8[8];
        ++v11;
        v12 += 7;
        v10 += 112;
      }

      while (v12 != a3);
      v30 = v11;
    }

    v27 = a4;
    sub_BFAB24(v10, v10, a7, a7, a2, a2, a1, a1, a3, a3, &v27);
    if (!a7)
    {
      return;
    }

LABEL_13:
    v22 = v29;
    v23 = *v29;
    if (*v29)
    {
      v24 = 0;
      v25 = a7 + 11;
      do
      {
        v26 = *(v25 - 1);
        if (v26)
        {
          *v25 = v26;
          operator delete(v26);
          v23 = *v22;
        }

        ++v24;
        v25 += 14;
      }

      while (v24 < v23);
    }

    return;
  }

  v16 = a7;
  if (a1 != a2)
  {
    v17 = 0;
    v16 = a7;
    v18 = a1;
    do
    {
      *v16 = *v18;
      v19 = v18[1];
      v20 = v18[2];
      v21 = v18[4];
      *(v16 + 48) = v18[3];
      *(v16 + 64) = v21;
      *(v16 + 16) = v19;
      *(v16 + 32) = v20;
      *(v16 + 88) = 0;
      *(v16 + 96) = 0;
      *(v16 + 80) = 0;
      *(v16 + 80) = v18[5];
      *(v16 + 96) = v18[6].n128_u64[0];
      v18[5].n128_u64[0] = 0;
      v18[5].n128_u64[1] = 0;
      v18[6].n128_u64[0] = 0;
      *(v16 + 104) = v18[6].n128_u8[8];
      ++v17;
      v18 += 7;
      v16 += 112;
    }

    while (v18 != a2);
    v30 = v17;
  }

  sub_BFA958(a7, v16, a2, a3, a1, a4);
  a7 = v28;
  if (v28)
  {
    goto LABEL_13;
  }
}

void sub_BFA930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

void sub_BFA944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_BF9A70(va);
  _Unwind_Resume(a1);
}

__n128 sub_BFA958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a2)
  {
    v10 = a1;
    v11 = a5 + 80;
    while (a3 != a4)
    {
      v13 = *(a6 + 24);
      if (!v13)
      {
        sub_2B7420();
      }

      v14 = (v11 - 80);
      if ((*(*v13 + 48))(v13, a3, v10))
      {
        *v14 = *a3;
        v15 = *(a3 + 16);
        v16 = *(a3 + 32);
        v17 = *(a3 + 64);
        *(v11 - 32) = *(a3 + 48);
        *(v11 - 16) = v17;
        *(v11 - 64) = v15;
        *(v11 - 48) = v16;
        v18 = *v11;
        if (*v11)
        {
          *(v11 + 8) = v18;
          operator delete(v18);
          *v11 = 0;
          *(v11 + 8) = 0;
          *(v11 + 16) = 0;
        }

        result = *(a3 + 80);
        *v11 = result;
        *(v11 + 16) = *(a3 + 96);
        *(a3 + 80) = 0;
        *(a3 + 88) = 0;
        *(a3 + 96) = 0;
        *(v11 + 24) = *(a3 + 104);
        a3 += 112;
        v11 += 112;
        if (v10 == a2)
        {
          return result;
        }
      }

      else
      {
        *v14 = *v10;
        v19 = *(v10 + 16);
        v20 = *(v10 + 32);
        v21 = *(v10 + 64);
        *(v11 - 32) = *(v10 + 48);
        *(v11 - 16) = v21;
        *(v11 - 64) = v19;
        *(v11 - 48) = v20;
        v22 = *v11;
        if (*v11)
        {
          *(v11 + 8) = v22;
          operator delete(v22);
          *v11 = 0;
          *(v11 + 8) = 0;
          *(v11 + 16) = 0;
        }

        result = *(v10 + 80);
        *v11 = result;
        *(v11 + 16) = *(v10 + 96);
        *(v10 + 80) = 0;
        *(v10 + 88) = 0;
        *(v10 + 96) = 0;
        *(v11 + 24) = *(v10 + 104);
        v10 += 112;
        v11 += 112;
        if (v10 == a2)
        {
          return result;
        }
      }
    }

    do
    {
      *(v11 - 80) = *v10;
      v23 = *(v10 + 16);
      v24 = *(v10 + 32);
      v25 = *(v10 + 64);
      *(v11 - 32) = *(v10 + 48);
      *(v11 - 16) = v25;
      *(v11 - 64) = v23;
      *(v11 - 48) = v24;
      v26 = *v11;
      if (*v11)
      {
        *(v11 + 8) = v26;
        operator delete(v26);
        *v11 = 0;
        *(v11 + 8) = 0;
        *(v11 + 16) = 0;
      }

      result = *(v10 + 80);
      *v11 = result;
      *(v11 + 16) = *(v10 + 96);
      *(v10 + 80) = 0;
      *(v10 + 88) = 0;
      *(v10 + 96) = 0;
      *(v11 + 24) = *(v10 + 104);
      v10 += 112;
      v11 += 112;
    }

    while (v10 != a2);
  }

  return result;
}

__n128 sub_BFAB24(uint64_t a1, _OWORD *a2, uint64_t a3, _OWORD *a4, uint64_t a5, __n128 *a6, uint64_t a7, __n128 *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == a4)
  {
    return result;
  }

  v14 = a2;
  v15 = a10 - 32;
  while (a6 != a8)
  {
    v23 = *(*a11 + 24);
    if (!v23)
    {
      sub_2B7420();
    }

    v21 = a6 - 7;
    v24 = v14 - 7;
    v25 = (*(*v23 + 48))(v23, v14 - 7, a6 - 7);
    v26 = (v15 - 80);
    if (v25)
    {
      *v26 = *v21;
      v27 = a6[-6];
      v28 = a6[-5];
      v29 = a6[-3];
      *(v15 - 32) = a6[-4];
      *(v15 - 16) = v29;
      *(v15 - 64) = v27;
      *(v15 - 48) = v28;
      v19 = *v15;
      v20 = a6;
      v24 = v14;
      if (!*v15)
      {
        goto LABEL_5;
      }

LABEL_4:
      *(v15 + 8) = v19;
      operator delete(v19);
      *v15 = 0;
      *(v15 + 8) = 0;
      v14 = v24;
      *(v15 + 16) = 0;
      goto LABEL_5;
    }

    *v26 = *v24;
    v16 = *(v14 - 6);
    v17 = *(v14 - 5);
    v18 = *(v14 - 3);
    *(v15 - 32) = *(v14 - 4);
    *(v15 - 16) = v18;
    *(v15 - 64) = v16;
    *(v15 - 48) = v17;
    v19 = *v15;
    v20 = v14;
    v21 = a6;
    v14 -= 7;
    if (*v15)
    {
      goto LABEL_4;
    }

LABEL_5:
    result = v20[-2];
    *v15 = result;
    *(v15 + 16) = v20[-1].n128_u64[0];
    v20[-2].n128_u64[0] = 0;
    v20[-2].n128_u64[1] = 0;
    v20[-1].n128_u64[0] = 0;
    *(v15 + 24) = v20[-1].n128_u8[8];
    v15 -= 112;
    a6 = v21;
    if (v14 == a4)
    {
      return result;
    }
  }

  if (a4 != v14)
  {
    v30 = 0;
    do
    {
      v31 = &v14[v30];
      v32 = v15 + v30 * 16;
      *(v32 - 80) = v14[v30 - 7];
      v33 = v14[v30 - 6];
      v34 = v14[v30 - 5];
      v35 = v14[v30 - 3];
      *(v32 - 32) = v14[v30 - 4];
      *(v32 - 16) = v35;
      *(v32 - 64) = v33;
      *(v32 - 48) = v34;
      v36 = *(v15 + v30 * 16);
      if (v36)
      {
        *(v32 + 8) = v36;
        operator delete(v36);
        *v32 = 0;
        *(v32 + 8) = 0;
        *(v32 + 16) = 0;
      }

      result = v31[-2];
      *v32 = result;
      *(v32 + 16) = v31[-1].n128_u64[0];
      v31[-2].n128_u64[0] = 0;
      v31[-2].n128_u64[1] = 0;
      v31[-1].n128_u64[0] = 0;
      *(v32 + 24) = v31[-1].n128_u8[8];
      v30 -= 7;
    }

    while (&v14[v30] != a4);
  }

  return result;
}

void sub_BFACF0(uint64_t a1, __n128 *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = *(a3 + 24);
      if (!v7)
      {
        sub_2B7420();
      }

      v8 = a2 - 7;
      if ((*(*v7 + 48))(v7, a2 - 7, a1))
      {
        v35 = *(a1 + 16);
        v36 = *(a1 + 32);
        v37 = *(a1 + 48);
        v10 = *(a1 + 80);
        v38 = *(a1 + 64);
        v34 = *a1;
        v11 = *(a1 + 96);
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
        *(a1 + 80) = 0;
        v12 = *(a1 + 104);
        v14 = v8[3];
        v13 = v8[4];
        v15 = v8[2];
        *(a1 + 16) = v8[1];
        *(a1 + 32) = v15;
        *(a1 + 48) = v14;
        *(a1 + 64) = v13;
        *a1 = *v8;
        *(a1 + 80) = a2[-2];
        *(a1 + 96) = a2[-1].n128_u64[0];
        *(a1 + 104) = a2[-1].n128_u8[8];
        v8[1] = v35;
        v8[2] = v36;
        v8[3] = v37;
        v8[4] = v38;
        *v8 = v34;
        a2[-2] = v10;
        a2[-1].n128_u64[0] = v11;
        a2[-1].n128_u8[8] = v12;
      }
    }

    else if (a4 <= 0)
    {

      sub_BFAFF0(a1, a2, a3);
    }

    else
    {
      v16 = a5;
      v18 = a4 >> 1;
      v19 = (a1 + 112 * (a4 >> 1));
      if (a4 <= a6)
      {
        v33 = 0;
        v34.n128_u64[0] = a5;
        v34.n128_u64[1] = &v33;
        sub_BFB28C(a1, (a1 + 112 * (a4 >> 1)), a3, a4 >> 1, a5);
        v33 = v18;
        v25 = a4 - v18;
        v26 = v16 + 112 * v18;
        sub_BFB28C(v19, a2, a3, v25, v26);
        v33 = a4;
        sub_BFB568(v16, v26, v26, v16 + 112 * a4, a1, a3);
        if (v16)
        {
          v27 = v33;
          if (v33)
          {
            v28 = 0;
            do
            {
              v30 = *(v16 + 80);
              if (v30)
              {
                v31 = *(v16 + 88);
                v29 = *(v16 + 80);
                if (v31 != v30)
                {
                  do
                  {
                    v32 = *(v31 - 32);
                    if (v32)
                    {
                      *(v31 - 24) = v32;
                      operator delete(v32);
                    }

                    v31 -= 112;
                  }

                  while (v31 != v30);
                  v29 = *(v16 + 80);
                }

                *(v16 + 88) = v30;
                operator delete(v29);
                v27 = v33;
              }

              ++v28;
              v16 += 112;
            }

            while (v28 < v27);
          }
        }
      }

      else
      {
        sub_BFACF0(a1, a1 + 112 * (a4 >> 1), a3, a4 >> 1, a5, a6);
        v23 = a4 - v18;
        sub_BFACF0(v19, a2, a3, v23, v16, a6);

        sub_BFB920(a1, v19, a2, a3, v18, v23, v16, a6);
      }
    }
  }
}

void sub_BFAFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_BFB870(va);
  _Unwind_Resume(a1);
}

void sub_BFAFF0(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1 + 7;
    if (a1 + 7 != a2)
    {
      v7 = a1;
      do
      {
        v9 = *(a3 + 24);
        if (!v9)
        {
          sub_2B7420();
        }

        v10 = v5;
        if ((*(*v9 + 48))(v9, v5, v7))
        {
          v33 = *v10;
          v11 = v10[1];
          v12 = v10[2];
          v13 = v10[4];
          v36 = v10[3];
          v37 = v13;
          v34 = v11;
          v35 = v12;
          *v38 = v7[12];
          *&v38[16] = *(v7 + 26);
          *(v7 + 24) = 0;
          *(v7 + 25) = 0;
          *(v7 + 26) = 0;
          v39 = *(v7 + 216);
          v14 = v10;
          while (1)
          {
            v15 = v7;
            *v14 = *v7;
            v16 = v7[1];
            v17 = v7[2];
            v18 = v7[4];
            v14[3] = v7[3];
            v14[4] = v18;
            v14[1] = v16;
            v14[2] = v17;
            v19 = (v14 + 5);
            v20 = *(v14 + 10);
            if (v20)
            {
              v21 = *(v14 + 11);
              v22 = *(v14 + 10);
              if (v21 != v20)
              {
                do
                {
                  v23 = *(v21 - 32);
                  if (v23)
                  {
                    *(v21 - 24) = v23;
                    operator delete(v23);
                  }

                  v21 -= 112;
                }

                while (v21 != v20);
                v22 = *v19;
              }

              *(v14 + 11) = v20;
              operator delete(v22);
              *v19 = 0;
              *(v14 + 11) = 0;
              *(v14 + 12) = 0;
            }

            v24 = v15 + 5;
            v14[5] = v15[5];
            *(v14 + 12) = *(v15 + 12);
            *(v15 + 10) = 0;
            *(v15 + 11) = 0;
            *(v15 + 12) = 0;
            *(v14 + 104) = *(v15 + 104);
            if (v15 == a1)
            {
              break;
            }

            v25 = *(a3 + 24);
            if (!v25)
            {
              sub_2B7420();
            }

            v7 = v15 - 7;
            v14 = v15;
            if (((*(*v25 + 48))(v25, &v33, v15 - 7) & 1) == 0)
            {
              v26 = v15;
              goto LABEL_24;
            }
          }

          v26 = a1;
LABEL_24:
          *v26 = v33;
          v27 = v34;
          v28 = v35;
          v29 = v37;
          v26[3] = v36;
          v26[4] = v29;
          v26[1] = v27;
          v26[2] = v28;
          v30 = *(v15 + 10);
          if (v30)
          {
            v31 = *(v26 + 11);
            v8 = v30;
            if (v31 != v30)
            {
              do
              {
                v32 = *(v31 - 4);
                if (v32)
                {
                  *(v31 - 3) = v32;
                  operator delete(v32);
                }

                v31 -= 112;
              }

              while (v31 != v30);
              v8 = *v24;
            }

            *(v26 + 11) = v30;
            operator delete(v8);
            *v24 = 0;
            *(v24 + 1) = 0;
            *(v24 + 2) = 0;
          }

          *v24 = *v38;
          *(v26 + 88) = *&v38[8];
          memset(v38, 0, sizeof(v38));
          *(v26 + 104) = v39;
        }

        v5 = v10 + 7;
        v7 = v10;
      }

      while (v10 + 7 != a2);
    }
  }
}